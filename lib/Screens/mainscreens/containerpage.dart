import 'package:customs/utils/constants/img_strings.dart';
import 'package:customs/utils/customs/Container/customcon.dart';
import 'package:customs/utils/helpers/helper2.dart';
import 'package:flutter/material.dart';

class Containerpage extends StatelessWidget {
  const Containerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Containers",
          style: TextStyle(fontFamily: "Motion", fontSize: 35),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CustomCon(height: 150, width: 150, imageUrl: CImages.b1),
            SizedBox(width: 20),
            GestureDetector(
              onTap: () => CHelper2.onTap3_1(context),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Center(
                    child: Text(
                      'Wave Container',
                      style: TextStyle(fontFamily: "Motion", fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
