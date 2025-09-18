import 'package:customs/utils/customs/TextField/passtext.dart';
import 'package:customs/utils/customs/TextField/textformfield.dart';
import 'package:flutter/material.dart';

class TextfieldPage extends StatefulWidget {
  const TextfieldPage({super.key});

  @override
  State<TextfieldPage> createState() => _TextfieldPageState();
}

class _TextfieldPageState extends State<TextfieldPage> {
  final TextEditingController control = TextEditingController();
  final TextEditingController passcontrol = TextEditingController();

  @override
  void dispose() {
    control.dispose();
    super.dispose();
  }

  void showTextInSnackbar() {
    final String enteredText = control.text;
    final String pass = passcontrol.text;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'You entered: $enteredText,\n $pass',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(8),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Text Field",
              style: TextStyle(fontFamily: "Motion", fontSize: 35),
            ),
            IconButton(onPressed: showTextInSnackbar, icon: Icon(Icons.check)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextfield(text: "Email", control: control),
            SizedBox(height: 10),
            PasswordTextField(
              controller: passcontrol,
              labelText: 'Enter your password',
            ),
          ],
        ),
      ),
    );
  }
}
