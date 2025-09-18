import 'package:flutter/material.dart';

class Custtombutton2 extends StatefulWidget {
  const Custtombutton2({super.key});

  @override
  State<Custtombutton2> createState() => _Custtombutton2State();
}

class _Custtombutton2State extends State<Custtombutton2> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => isTapped = true),
      onTapUp: (_) => setState(() => isTapped = false),
      onTapCancel: () => setState(() => isTapped = false),
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Button 2 Pressed!',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.green,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(8),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 300,
        decoration: BoxDecoration(
          color: isTapped ? Colors.red : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(width: 2),
        ),
        child: const Center(
          child: Text("Button 2", style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
