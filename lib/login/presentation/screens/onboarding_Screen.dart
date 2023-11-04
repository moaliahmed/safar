import 'dart:async';

import 'package:flutter/material.dart';
import 'package:safar/login/presentation/component/dotindicator_component.dart';
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
        }
        _pageController.animateToPage(_pageIndex,
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
      body: Stack(children: [
        PageView.builder(
          onPageChanged: (value) {
            setState(
              () {
                _pageIndex = value;
              },
            );
          },
          controller: _pageController,
          itemCount: 3,
          itemBuilder: (context, index) {
            return OnboardComponent(
              pageIndex: index,
              function: () {
                _pageController.animateToPage(++_pageIndex,
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeIn);
              },
            );
          },
        ),
        Positioned(
          bottom: 25,
          //right: MediaQuery.of(context).size.width / 2,
          left: MediaQuery.of(context).size.width / 2 - 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                demoData.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: DotIndicator(
                    isActive: index == _pageIndex,
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
