import 'package:customs/Screens/subscreens/conpage1.dart';
import 'package:customs/Screens/subscreens/navbar1.dart';

import 'package:flutter/material.dart';

class CHelper2 {
  static void onTap3_1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Conpage1()),
    );
  }

  static void onTap6_1(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Navbar1()));
  }
}
