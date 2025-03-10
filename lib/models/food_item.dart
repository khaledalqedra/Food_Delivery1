class FoodItem {
  final String name;
  final String imgUrl;
  final double price;
  final bool isFavorite;

  FoodItem({
    required this.name,
    required this.imgUrl,
    required this.price,
    this.isFavorite = false,
  });

  FoodItem copyWith({
    String? name,
    String? imgUrl,
    double? price,
    bool? isFavorite,
  }) {
    return FoodItem(
        name: name ?? this.name,
        imgUrl: imgUrl ?? this.imgUrl,
        price: price ?? this.price,
        isFavorite: isFavorite ?? this.isFavorite,
        );
  }
}

List<FoodItem> food = [
  FoodItem(
    name: 'Beef Burger',
    imgUrl: 'https://www.pngmart.com/files/23/Big-Mac-PNG-Image.png',
    price: 7.0,
  ),
  FoodItem(
      name: 'Chicken Burger',
      imgUrl:
          'https://www.pngmart.com/files/15/Non-Veg-Burger-King-PNG-Clipart.png',
      price: 5.5),
  FoodItem(
      name: 'Peooeroni Pizza',
      imgUrl: 'https://www.pngmart.com/files/1/Pepperoni-Pizza.png',
      price: 9.0),
  FoodItem(
      name: 'Pasta',
      imgUrl: 'https://www.pngmart.com/files/5/Spaghetti-PNG-Clipart.png',
      price: 5.0),
  FoodItem(
      name: 'Chicken Wings',
      imgUrl:
          'https://www.pngmart.com/files/12/Chicken-Wings-PNG-Transparent.png',
      price: 8.5),
  FoodItem(
      name: 'Sushi',
      imgUrl:
          'https://www.pngmart.com/files/5/Avocado-Roll-PNG-Image.png',
      price: 10.0),
  FoodItem(
      name: 'Ramen Soup',
      imgUrl:
          'https://www.pngmart.com/files/23/Ramen-PNG-Isolated-Photo.png',
      price: 6.0),
  FoodItem(
      name: 'Cheese Pizza',
      imgUrl:
          'https://www.pngmart.com/files/1/Cheese-Pizza.png',
      price: 8.0),
];
