import 'package:customs/utils/customs/Divider/or_divider.dart';
import 'package:flutter/material.dart';

class Otherspage extends StatefulWidget {
  const Otherspage({super.key});

  @override
  State<Otherspage> createState() => _OtherspageState();
}

class _OtherspageState extends State<Otherspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Miscellaneous',
          style: TextStyle(fontFamily: "Motion", fontSize: 35),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [OrDivider()]),
      ),
    );
  }
}
