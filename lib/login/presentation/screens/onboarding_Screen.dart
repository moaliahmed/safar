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
      const Duration(seconds: 6),
      (timer) {
        if (_pageIndex < 2) {
          ++_pageIndex;
        } else {
          _pageIndex = 0;
        } _pageController.animateToPage(_pageIndex,
            duration: const Duration(milliseconds: 350), curve: Curves.easeIn);

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
            _pageIndex = value;
          });
        },
        controller: _pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          return OnboardComponent(
            pageIndex: index,
            function: () {
              _pageController.animateToPage(++_pageIndex,
                    duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
            },
          );
        },
      ),
    );
  }
}
