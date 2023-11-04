import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent(
      {super.key, required this.title, required this.function});

  final String title;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function(),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xff0FA3E2),
          image:const DecorationImage(image: AssetImage('assets/images/Rectangle 2.2.png'),fit:BoxFit.fill),
        ),
        height: 57,
        width: MediaQuery.of(context).size.width,
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}
