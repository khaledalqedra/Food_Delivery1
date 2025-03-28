import 'package:flutter/material.dart';
import 'package:food_delivery1/models/food_item.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final favoriteFood =
        food.where((FoodItem) => FoodItem.isFavorite == true).toList();

    if (favoriteFood.isEmpty) {
      return Center(
        child: Column(
          
          children: [
            Image.asset('assets/images/empty_state.png',
             fit: BoxFit.cover,
             height: 350,),
            const Text('No Favorite Items Found!',
            style: TextStyle(
              fontSize: 22,
            ),
            ),
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: favoriteFood.length,
        itemBuilder: (context, index) => Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Image.network(
                  favoriteFood[index].imgUrl,
                  height: 70,
                  width: 100,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food[index].name,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        '\$ ${favoriteFood[index].price}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    final targetedItem = favoriteFood[index];
                    int targetedIndex = food.indexOf(targetedItem);
                    setState(() {
                      food[targetedIndex] =
                          food[targetedIndex].copyWith(isFavorite: false);
                      favoriteFood.remove(targetedItem);
                    });
                  },
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.deepOrange,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
