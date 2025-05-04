// Dart
import 'dart:io';

// Flutter
import 'package:flutter/material.dart';
// Other Packages
// Internal (Files)
import 'package:food_delivery1/models/food_item.dart';
import 'package:food_delivery1/pages/food_details_page.dart';
import 'package:food_delivery1/ui_models/food_details_args.dart';
import 'package:food_delivery1/widgets/food_grid_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  String? categoryChosenId;
  bool enableCategoryFilter = false;
  late List<FoodItem> filteredFood;

  @override
  void initState() {
    super.initState();
    filteredFood = food;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset(
                'assets/images/classic_burger.jpg',
                height: isLandscape ? size.height * 0.8 : size.height * 0.23,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: size.height * 0.04),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: food.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isLandscape ? 4 : 2,
                mainAxisSpacing: size.height * 0.02,
                crossAxisSpacing: size.height * 0.01,
              ),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  final targetedFoodItem = food
                      .firstWhere((item) => item.id == filteredFood[index].id);
                  final targetedIndex = food.indexOf(targetedFoodItem);
                  Navigator.of(context)
                      .pushNamed(
                    FoodDetailsPage.routeName,
                    arguments: FoodDetailsArgs(foodIndex: targetedIndex),
                  )
                      .then((value) {
                    setState(() {});
                    filteredFood = food;
                    categoryChosenId = null;
                    debugPrint("The value returned in home: $value");
                  });
                },
                child: FoodGridItem(
                  foodIndex: index,
                  filteredFood: filteredFood,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
