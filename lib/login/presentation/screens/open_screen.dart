import 'dart:async';

import 'package:flutter/material.dart';
import 'package:safar/login/presentation/screens/onboarding_Screen.dart';
class OpenScreen extends StatefulWidget {
  const OpenScreen({super.key});

  @override
  State<OpenScreen> createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreen> {
  @override
  void initState() {
    Timer(
     const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingScreen(),),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/Rectangle.png',
                ),
                fit: BoxFit.fill)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/images/logo.png'),
         const Text(
            'Safar',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 52,color: Colors.white),
          )
        ]),
      ),
    );
  }
}
