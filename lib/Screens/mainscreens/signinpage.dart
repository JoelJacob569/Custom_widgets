import 'package:customs/utils/customs/Signin%20options/google_auth.dart';
import 'package:flutter/material.dart';

class Signinpage extends StatefulWidget {
  const Signinpage({super.key});

  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign-in Options',
          style: TextStyle(fontFamily: "Motion", fontSize: 35),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [SocalSignUp()]),
      ),
    );
  }
}
