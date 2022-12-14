import 'package:flutter/material.dart';
import 'package:growback_driver/utils/app_style.dart';

class ReuTextField extends StatelessWidget {
  final String text;
  const ReuTextField({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
            hintText: text,
            hintStyle: hintText,
            border: UnderlineInputBorder(
                borderSide: BorderSide(color : Colors.grey)
            )
        ),
      ),
    );
  }
}
