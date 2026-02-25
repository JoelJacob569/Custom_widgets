import 'package:customs/utils/helpers/helper1.dart';
import 'package:flutter/material.dart';

class MenuItems {
  static List<Map<String, dynamic>> getItems(BuildContext context) {
    return [
      {
        'title': 'Buttons',
        'onTap': () => CHelper1.onTap1(context),
      },
      {
        'title': 'Text Field',
        'onTap': () => CHelper1.onTap2(context),
      },
      {
        'title': 'Containers',
        'onTap': () => CHelper1.onTap3(context),
      },
      {
        'title': 'Drop Down',
        'onTap': () => CHelper1.onTap4(context),
      },
      {
        'title': 'ListView',
        'onTap': () => CHelper1.onTap5(context),
      },
      {
        'title': 'Navigation Bar',
        'onTap': () => CHelper1.onTap6(context),
      },
      {
        'title': 'Progress Bar',
        'onTap': () => CHelper1.onTap7(context),
      },
      {
        'title': 'Sign-in Options',
        'onTap': () => CHelper1.onTap8(context),
      },
      {
        'title': 'Miscellaneous',
        'onTap': () => CHelper1.onTap9(context),
      },
    ];
  }
}