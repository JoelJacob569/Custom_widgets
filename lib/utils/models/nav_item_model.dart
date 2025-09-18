import 'package:flutter/material.dart';

class NavItemModel {
  final String? title;
  final IconData? iconSrc;

  NavItemModel({required this.title, required this.iconSrc});
}

List<NavItemModel> bottomNavItems = [
  NavItemModel(title: 'Home', iconSrc: Icons.home),
  NavItemModel(title: 'Templates', iconSrc: Icons.auto_awesome_mosaic),
  NavItemModel(title: 'Setting', iconSrc: Icons.settings),
];
