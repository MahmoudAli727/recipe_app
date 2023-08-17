import 'package:flutter/material.dart';
import 'package:recipe_app/Screens/home/components/myButtomNavigationBar.dart';
import 'package:recipe_app/Screens/profi/components/Body.dart';
import 'package:recipe_app/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Center(
              child: Text(
            "Edit",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          )),
          SizedBox(
            width: 10,
          )
        ],
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
