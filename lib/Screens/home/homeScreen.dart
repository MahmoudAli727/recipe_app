// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:recipe_app/Screens/home/components/AppBar.dart';
import 'package:recipe_app/Screens/home/components/Body.dart';
import 'package:recipe_app/Screens/home/components/myButtomNavigationBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
