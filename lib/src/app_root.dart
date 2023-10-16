import 'package:flutter/material.dart';
import 'package:safar/login/presentation/screens/open_screen.dart';
class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OpenScreen() ,
    );
  }
}
