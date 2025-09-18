import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String? text;
  final Function? press;

  const Custombutton({super.key, required this.text, required this.press});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press as void Function()?,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        fixedSize: const Size(400, 50),
      ),
      child: Text(
        text as String,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
