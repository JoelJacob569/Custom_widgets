import 'package:customs/Screens/subscreens2/firstpage.dart';
import 'package:customs/Screens/subscreens2/secondpage.dart';
import 'package:customs/Screens/subscreens2/thirdpage.dart';
import 'package:customs/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:customs/utils/models/nav_item_model.dart';

class Custombottomnavbar extends StatefulWidget {
  const Custombottomnavbar({super.key});

  @override
  State<Custombottomnavbar> createState() => _CustombottomnavbarState();
}

class _CustombottomnavbarState extends State<Custombottomnavbar> {
  int selectedNavIndex = 0;
  List<Widget> pages = [
    const Firstpage(),
    const Secondpage(),
    const Thirdpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages[selectedNavIndex]),
      bottomNavigationBar: Container(
        height: 56,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 20, left: 24, right: 24),
        decoration: BoxDecoration(
          color: CColors.bottomnavbgcolor.withValues(alpha: 0.8),
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          boxShadow: [
            BoxShadow(
              color: CColors.bottomnavbgcolor.withValues(alpha: 0.3),
              offset: const Offset(0, 20),
              blurRadius: 20,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            bottomNavItems.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedNavIndex = index;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedBar(isActive: selectedNavIndex == index),
                  SizedBox(
                    height: 26,
                    width: 40,
                    child: Opacity(
                      opacity: selectedNavIndex == index ? 1 : 0.5,
                      child: Icon(bottomNavItems[index].iconSrc),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({super.key, required this.isActive});

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 2),
      height: 4,
      width: isActive ? 20 : 0,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
