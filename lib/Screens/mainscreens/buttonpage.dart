import 'package:customs/utils/customs/Button/button.dart';
import 'package:customs/utils/customs/Button/button1.dart';
import 'package:flutter/material.dart';

class Buttonpage extends StatelessWidget {
  const Buttonpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Buttons',
          style: TextStyle(fontFamily: "Motion", fontSize: 35),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Custombutton(
              text: "Button 1",
              press: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Button 1 Pressed!',
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
            ),
            SizedBox(height: 20),
            Custtombutton2(),
          ],
        ),
      ),
    );
  }
}
