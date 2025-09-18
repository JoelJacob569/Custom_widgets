import 'package:customs/Screens/mainscreens/buttonpage.dart';
import 'package:customs/Screens/mainscreens/containerpage.dart';
import 'package:customs/Screens/mainscreens/dropdownpage.dart';
import 'package:customs/Screens/mainscreens/listviewpage.dart';
import 'package:customs/Screens/mainscreens/navbarbage.dart';
import 'package:customs/Screens/mainscreens/otherspage.dart';
import 'package:customs/Screens/mainscreens/progresspage.dart';
import 'package:customs/Screens/mainscreens/signinpage.dart';
import 'package:customs/Screens/mainscreens/textpage.dart';

import 'package:flutter/material.dart';

class CHelper1 {
  static void onTap1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Buttonpage()),
    );
  }

  static void onTap2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TextfieldPage()),
    );
  }

  static void onTap3(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Containerpage()),
    );
  }

  static void onTap4(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Dropdownpage()),
    );
  }

  static void onTap5(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ListviewPage()),
    );
  }

  static void onTap6(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Navbarbage()),
    );
  }

  static void onTap7(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Progresspage()),
    );
  }

  static void onTap8(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Signinpage()),
    );
  }

  static void onTap9(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Otherspage()),
    );
  }
}
