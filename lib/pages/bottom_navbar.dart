import 'package:flutter/material.dart';
import 'package:food_delivery1/pages/account_page.dart';
import 'package:food_delivery1/pages/favorites_page.dart';
import 'package:food_delivery1/pages/home_page.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int selectedIndex = 0;

  void onItemTapped(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }
List<Widget> bodyOptions = const [
  HomePage(),
   FavoritesPage(),
   AccountPage(),
   
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Center(
          child: Text('JomFood'),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: bodyOptions[selectedIndex],
      drawer: const Drawer(
        child: Center(
          child: Text('Im in the drawer!'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.deepOrange,
        onTap: onItemTapped,
      ),
    );
  }
}
