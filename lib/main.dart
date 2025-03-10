import 'dart:io';

import 'package:flutter/material.dart';

import 'package:food_delivery1/pages/bottom_navbar.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JOMFood - Food Delivery',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        useMaterial3: false,
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        dividerTheme: const DividerThemeData(
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
        listTileTheme: ListTileThemeData(
          iconColor: Colors.deepOrange,
        ),
        fontFamily: 'OpenSans',
      ),
      home: const BottomNavBarPage(),
    );
  }
}
