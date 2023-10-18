import 'package:flutter/material.dart';
import 'package:safar/login/presentation/component/button_component.dart';
import 'package:safar/login/presentation/component/text_form_field_component.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Rectangle.png'),
              fit: BoxFit.fill)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Spacer(),
            Text(
              'Sign in',
              style: TextStyle(fontSize: 21, color: Colors.white,fontWeight: FontWeight.bold),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(

                  children: [
                    TextFormFieldComponent(
                      title: 'Email',
                      icons:Icons.email_outlined,
                      textEditingController: emailEditingController,
                    ),
                    TextFormFieldComponent(
                      title: 'password',
                      icons:Icons.lock_outline_rounded,
                      textEditingController: passwordEditingController,
                    ),
                    Text(
                      'Forget Password?',
                    ),
                    ButtonComponent(title: 'Sign IN', function: () {})
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
