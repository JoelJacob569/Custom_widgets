import 'package:customs/utils/customs/Divider/or_divider.dart';
import 'package:flutter/material.dart';

class SocalSignUp extends StatelessWidget {
  const SocalSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocalIcon(
              iconSrc: "assets/icons/google.png",
              press: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Goggle Pressed!',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(8),
                  ),
                );
              },
              h: 50,
              w: 50,
            ),
            SocalIcon(
              iconSrc: "assets/icons/facebook.png",
              press: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Facebook Pressed!',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(8),
                  ),
                );
              },
              h: 35,
              w: 35,
            ),
          ],
        ),
      ],
    );
  }
}

class SocalIcon extends StatelessWidget {
  final String? iconSrc;
  final Function? press;
  final double? h;
  final double? w;
  const SocalIcon({super.key, this.iconSrc, this.press, this.h, this.w});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          //border: Border.all(),
          shape: BoxShape.circle,
        ),
        child: Image.asset(iconSrc!, height: h, width: w),
      ),
    );
  }
}
