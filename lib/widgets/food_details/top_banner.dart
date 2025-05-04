/*import 'package:flutter/material.dart';
import 'package:food_delivery1/models/food_item.dart';

class TopBanner extends StatelessWidget {
  final FoodItem foodItem;
  
  const TopBanner({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Image.network(
            food[foodItem].imgUrl,
            fit: BoxFit.contain,
            height: size.height * 0.28,
          ),
        ),
      ),
    );
  }
}
*/