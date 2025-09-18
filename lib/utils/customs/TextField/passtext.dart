// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;

  const PasswordTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.obscureText = true,
  });

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.labelText,
        suffixIcon: IconButton(
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
      ),
      obscureText: _obscureText,
    );
  }
}
