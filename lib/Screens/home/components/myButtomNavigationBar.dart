// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/Screens/profi/ProfilScreen.dart';
import 'package:recipe_app/constants.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  static int selectindex = 0;
  List items = [
    "assets/icons/home.svg",
    "assets/icons/list.svg",
    "assets/icons/camera.svg",
    "assets/icons/chef_nav.svg",
    "assets/icons/user.svg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
              items.length,
              (index) => iconCard(
                    index: index,
                    svgSrc: items[index],
                  ))
        ],
      ),
    );
  }

  Widget iconCard({index, svgSrc}) => InkWell(
        onTap: () {
          setState(() {
            selectindex = index;
          });
          if (selectindex == 4) {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return ProfileScreen();
              },
            ));
          }
        },
        child: Container(
          child: SvgPicture.asset(svgSrc,
              color: selectindex == index
                  ? kPrimaryColor
                  : Colors.grey.withOpacity(0.3)),
        ),
      );
}
