class FoodItem {
  final String id;
  final String name;
  final String imgUrl;
  final double price;
  final bool isFavorite;
  final String categoryId;

  const FoodItem({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.price,
    required this.categoryId,
    this.isFavorite = false,
  });

  FoodItem copyWith({
    String? id,
    String? name,
    String? imgUrl,
    double? price,
    bool? isFavorite,
    String? categoryId,
  }) {
    return FoodItem(
      id: id ?? this.id,
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
      categoryId: categoryId ?? this.categoryId,
    );
  }
}

List<FoodItem> food = [
  FoodItem(
     id: 'burger 1',
    name: 'Beef Burger',
    imgUrl:
        'https://www.pngmart.com/files/23/Big-Mac-PNG-Image.png',
    price: 8.5,
    categoryId: '1',
  ),
  FoodItem(
    id: 'burger 2',
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngmart.com/files/15/Non-Veg-Burger-King-PNG-Clipart.png',
    price: 8.5,
    categoryId: '1',
  ),
     
  FoodItem(
    id: 'burger 3',
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngmart.com/files/1/Pepperoni-Pizza.png',
    price: 8.5,
    categoryId: '1',
  ),
      
  FoodItem(
    id: 'burger 4',
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngmart.com/files/5/Spaghetti-PNG-Clipart.png',
    price: 8.5,
    categoryId: '1',
  ),
      
  FoodItem(
    id: 'burger 5',
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngmart.com/files/12/Chicken-Wings-PNG-Transparent.png',
    price: 8.5,
    categoryId: '1',
  ),
     
  FoodItem(
    id: 'burger 6',
    name: 'Sushi',
    imgUrl: 'https://www.pngmart.com/files/5/Avocado-Roll-PNG-Image.png',
    price: 10.0,
    categoryId: '1',
  ),
      
  FoodItem(
    id: 'burger 2',
    name: 'Ramen Soup',
    imgUrl: 'https://www.pngmart.com/files/23/Ramen-PNG-Isolated-Photo.png',
    price: 6.5,
    categoryId: '1',
  ),
      
  FoodItem(
    id: 'burger 2',
    name: 'Cheese Pizza',
    imgUrl: 'https://www.pngmart.com/files/1/Cheese-Pizza.png',
    price: 8.0,
    categoryId: '1',
  ),
      
];
