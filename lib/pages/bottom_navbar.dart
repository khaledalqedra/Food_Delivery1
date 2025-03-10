import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
    final PreferredSizeWidget? appBar;
    final Widget? bottomNavBar;

    if (Platform.isAndroid) {
      appBar = AppBar(
        title: Center(child: const Text('JOMFood')),
      );
      
    } else if (Platform.isIOS) {
      appBar = CupertinoNavigationBar(
        middle: const Text('JOMFood'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      );
    } else {
      appBar = null;
    }

    return Scaffold(
      appBar: appBar,
      body: SafeArea(child: bodyOptions[selectedIndex]),
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
        onTap: onItemTapped,
      ),
    );
  }
}
