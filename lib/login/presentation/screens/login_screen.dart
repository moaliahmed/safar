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
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Rectangle.png'),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .75,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Spacer(),
                      TextFormFieldComponent(
                        title: 'Email',
                        icons: Icons.email_outlined,
                        textEditingController: emailEditingController,
                      ),
                      TextFormFieldComponent(
                        title: 'password',
                        icons: Icons.lock_outline_rounded,
                        textEditingController: passwordEditingController,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          textAlign: TextAlign.right,
                          'Forget Password?',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffff4900),
                          ),
                        ),
                      ),
                      ButtonComponent(title: 'Sign In', function: () {}),
                      const Spacer(),
                      const Spacer(),
                      const Text(
                        textAlign: TextAlign.center,
                        'or sign In using',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width / 3,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xff266ad1)),
                              child: const Text(
                                'Facebook',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width / 3,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xffd14426),
                              ),
                              child: const Text(
                                'Google',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        'By creating an account, you are agree to our Terms',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don’t have an account?'),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff00BD6B),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
