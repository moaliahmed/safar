import 'dart:async';

import 'package:flutter/material.dart';
import 'package:safar/login/presentation/component/onbourd_component.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    _timer = Timer.periodic(
      const Duration(seconds: 5),
      (timer) {
        if (_pageIndex < 2) {
          _pageIndex++;
        } else {
          _pageIndex = 0;
        }    _pageController.animateToPage(_pageIndex, duration:const Duration(milliseconds: 350), curve: Curves.easeIn);

      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (value) {
          setState(() {
            _pageIndex=value;
          });
        },
        controller: _pageController,
        itemCount: demoData.length,
        itemBuilder: (context, index) {
          return OnboardComponent(
            title: demoData[index].title,
            description: demoData[index].description,
            image: demoData[index].image,
          );
        },
      ),
    );
  }
}

class OnBoard {
  final String image, title, description;

  OnBoard({
    required this.image,
    required this.title,
    required this.description,
  });
}

// OnBoarding content list
final List<OnBoard> demoData = [
  OnBoard(
      image: 'assets/images/Onboarding_1.png',
      title: "Get ready for the\nnext trip",
      description:
          'Find thousans of tourist destinations\nready for you to visit'),
  OnBoard(
      image: 'assets/images/Onboarding_2.png',
      title: "Visit tourist\nattractions",
      description:
          'Find thousans of tourist destinations\nready for you to visit'),
  OnBoard(
      image: 'assets/images/Onboarding_3.png',
      title: "Lets explore the\nworld",
      description:
          'Find thousans of tourist destinations\nready for you to visit'),
];

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
    super.key,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 24 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.orange : Colors.white,
        border: isActive ? null : Border.all(color: Colors.orange),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
