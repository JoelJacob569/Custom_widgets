import 'package:customs/utils/helpers/helper2.dart';
import 'package:customs/utils/maincus.dart';
import 'package:flutter/material.dart';

class Navbarbage extends StatefulWidget {
  const Navbarbage({super.key});

  @override
  State<Navbarbage> createState() => _NavbarbageState();
}

class _NavbarbageState extends State<Navbarbage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Navigation Bar',
          style: TextStyle(fontFamily: "Motion", fontSize: 35),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Maincus(
              onTap: () => CHelper2.onTap6_1(context),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "NavBar 1",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
