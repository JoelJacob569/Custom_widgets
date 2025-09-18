import 'package:customs/utils/constants/colors.dart';
import 'package:customs/utils/customs/Container/wavecontainer.dart';
import 'package:flutter/material.dart';

class Conpage1 extends StatelessWidget {
  const Conpage1({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: height * 0.5,
            child: ClipPath(
              clipper: MyClipper(),
              child: Container(
                decoration: const BoxDecoration(color: CColors.primary),
                height: 350,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
