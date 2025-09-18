import 'package:customs/utils/customs/Progress/progress.dart';
import 'package:flutter/material.dart';

class Progresspage extends StatefulWidget {
  const Progresspage({super.key});

  @override
  State<Progresspage> createState() => _ProgresspageState();
}

class _ProgresspageState extends State<Progresspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Progress bar',
          style: TextStyle(fontFamily: "Motion", fontSize: 35),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [CustomProgressIndicator()]),
      ),
    );
  }
}
