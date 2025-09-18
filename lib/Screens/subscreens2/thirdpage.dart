import 'package:flutter/material.dart';

class Thirdpage extends StatelessWidget {
  const Thirdpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Third Page',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
