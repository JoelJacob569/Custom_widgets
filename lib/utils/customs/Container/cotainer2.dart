import 'package:flutter/material.dart';

class Container2 extends StatelessWidget {
  const Container2(
      {super.key,
      required this.onTap,
      required this.height,
      required this.width,
      required this.color});

  final VoidCallback onTap;
  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
