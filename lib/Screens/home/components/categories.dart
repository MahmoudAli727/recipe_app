import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All", "Indian", "Italian", "Mexican", "Chinese"];
  int selectItem = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
          height: 35,
          child: ListView.builder(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CategoryCard(index),
          )),
    );
  }

  Widget CategoryCard(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectItem = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 36),
        child: Container(
          height: 35,
          width: 55,
          // padding: EdgeInsets.symmetric(vertical: 5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selectItem == index ? Color(0xFFEFF3EE) : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            categories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color:
                  selectItem == index ? kPrimaryColor : const Color(0xFFC2C2B5),
            ),
          ),
        ),
      ),
    );
  }
}
