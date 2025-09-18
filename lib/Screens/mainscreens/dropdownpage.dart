import 'package:customs/utils/customs/DropDown/cdrop.dart';
import 'package:flutter/material.dart';

class Dropdownpage extends StatefulWidget {
  const Dropdownpage({super.key});

  @override
  State<Dropdownpage> createState() => _DropdownpageState();
}

class _DropdownpageState extends State<Dropdownpage> {
  String selectedopt = "Option";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Drop Down',
          style: TextStyle(fontFamily: "Motion", fontSize: 35),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomDropdown(
              initialValue: "Options",
              options: ["Options", "Yes", "No"],
              onSelected: (value) => setState(() {
                selectedopt = value;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
