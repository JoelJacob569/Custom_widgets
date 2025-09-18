import 'package:customs/utils/customs/Listview/listviewhori.dart';
import 'package:customs/utils/customs/Listview/listviewverti.dart';
import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  final List<FoodCategory> myfoodCategories = [
    FoodCategory(imageUrl: 'assets/images/burger.png', name: 'Burgers'),
    FoodCategory(imageUrl: 'assets/images/pizza.png', name: 'Pizza'),
    FoodCategory(imageUrl: 'assets/images/burger.png', name: 'Burgers'),
    FoodCategory(imageUrl: 'assets/images/pizza.png', name: 'Pizza'),
    FoodCategory(imageUrl: 'assets/images/burger.png', name: 'Burgers'),
    FoodCategory(imageUrl: 'assets/images/pizza.png', name: 'Pizza'),
    FoodCategory(imageUrl: 'assets/images/burger.png', name: 'Burgers'),
    FoodCategory(imageUrl: 'assets/images/pizza.png', name: 'Pizza'),
  ];

  final List<Food> myfoodlist = [
    Food(
      imageUrl: 'assets/images/burger.png',
      name: 'Burgers',
      location: 'kochi',
      quantity: '4',
    ),
    Food(
      imageUrl: 'assets/images/pizza.png',
      name: 'Pizza',
      location: 'kochi',
      quantity: '4',
    ),
    Food(
      imageUrl: 'assets/images/burger.png',
      name: 'Burgers',
      location: 'kochi',
      quantity: '4',
    ),
    Food(
      imageUrl: 'assets/images/pizza.png',
      name: 'Pizza',
      location: 'kochi',
      quantity: '4',
    ),
    Food(
      imageUrl: 'assets/images/burger.png',
      name: 'Burgers',
      location: 'kochi',
      quantity: '4',
    ),
    Food(
      imageUrl: 'assets/images/pizza.png',
      name: 'Pizza',
      location: 'kochi',
      quantity: '4',
    ),
    Food(
      imageUrl: 'assets/images/burger.png',
      name: 'Burgers',
      location: 'kochi',
      quantity: '4',
    ),
    Food(
      imageUrl: 'assets/images/pizza.png',
      name: 'Pizza',
      location: 'kochi',
      quantity: '4',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListView',
          style: TextStyle(fontFamily: "Motion", fontSize: 35),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            FoodCategoryList(
              foodCategories: myfoodCategories,
              onCategoryTap: (category) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Food category tapped: ${category.name}",
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
            ),
            Expanded(
              child: FoodList(
                foodlist: myfoodlist,
                onFoodItemTap: (food) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Food item tapped: ${food.name}",
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
