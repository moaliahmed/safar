import 'package:flutter/material.dart';

class DataTimeComponent extends StatelessWidget {
  DataTimeComponent({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(
            Icons.date_range_outlined,
            color: Color(0xff0090ff),
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.grey.shade700),
          ),
          trailing: const Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 32,
          ),
        ),
        const Divider(
          thickness: 2,
        )
      ],
    );
  }
}
