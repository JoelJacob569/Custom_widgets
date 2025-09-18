import 'package:flutter/material.dart';

class Maincus extends StatelessWidget {
  const Maincus({super.key, required this.onTap, required this.child});

  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border(
            bottom: BorderSide(color: Colors.black, width: 2.0),
            right: BorderSide(color: Colors.black, width: 2.0),
            left: BorderSide(color: Colors.black, width: 2.0),
          ),
        ),
        child: child,
      ),
    );
  }
}
