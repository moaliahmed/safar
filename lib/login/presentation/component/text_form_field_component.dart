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
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(icons,color: Color(0xff0090ff),),
        hintText: title,
      ),
    );
  }
}
