import 'package:flutter/material.dart';

class TextFormFieldComponent extends StatelessWidget {
  const TextFormFieldComponent({
    super.key,
    required this.textEditingController,
    required this.title,
    required this.icons,
  });

  final TextEditingController textEditingController;
  final String title;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(icons,color:const Color(0xff0090ff),),
          hintText: title,
          hintStyle:const TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
        ),
      ),
    );
  }
}
