import 'package:customs/utils/constants/menu_items.dart';
import 'package:customs/utils/maincus.dart';
import 'package:flutter/material.dart';

class Customs extends StatefulWidget {
  const Customs({super.key});

  @override
  State<Customs> createState() => _CustomsState();
}

class _CustomsState extends State<Customs> {
  @override
  Widget build(BuildContext context) {
    final items = MenuItems.getItems(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Widget Studio',
            style: TextStyle(fontFamily: "Motion", fontSize: 50),
          ),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(left: 10, right: 10),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Maincus(
                onTap: items[index]['onTap'],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        items[index]['title'],
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
              SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}
