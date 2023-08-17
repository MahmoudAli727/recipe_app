// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:recipe_app/Screens/home/components/categories.dart';
import 'package:recipe_app/Screens/home/components/infoCard.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Categories(),
        Expanded(child: InfoCardList()),
      ],
    );
  }
}
