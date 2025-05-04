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
    final size = MediaQuery.of(context).size;
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    final favoriteFood =
        food.where((FoodItem) => FoodItem.isFavorite == true).toList();

    if (favoriteFood.isEmpty) {
      return Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/empty_state.png',
              fit: BoxFit.cover,
              height: size.height * 0.3,
            ),
            Text(
              'No Favorite Items Found!',
              style: Theme.of(context).textTheme.headlineSmall,
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
                  height: isLandscape ? size.height * 0.2 : size.height * 0.09,
                  width: size.width * 0.2,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        favoriteFood[index].name,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        '\$ ${favoriteFood[index].price}',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                    ],
                  ),
                ),
                if (!isLandscape)
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
                  icon: Icon(
                    Icons.favorite,
                    color: Theme.of(context).primaryColor,
                    size:isLandscape ? size.height * 0.1 : size.height * 0.035,
                  ),
                ),

                if (isLandscape)
                TextButton.icon( 
                    icon: Icon(Icons.favorite, color: Theme.of(context).primaryColor,
                    size:isLandscape 
                    ? size.height * 0.08 
                    : size.height * 0.035,
                    ),
                    onPressed: () {
                    final targetedItem = favoriteFood[index];
                    int targetedIndex = food.indexOf(targetedItem);
                    setState(() {
                      food[targetedIndex] =
                          food[targetedIndex].copyWith(isFavorite: false);
                      favoriteFood.remove(targetedItem);
                    });
                  }, label: Text('Favorite',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
