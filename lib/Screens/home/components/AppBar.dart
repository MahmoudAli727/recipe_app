import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar appBar() {
  return AppBar(
    leading: IconButton(
        onPressed: () {}, icon: SvgPicture.asset("assets/icons/menu.svg")),
    title: Center(
      child: SvgPicture.asset(
        "assets/icons/logo.svg",
        height: 50,
      ),
    ),
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: () {}, icon: SvgPicture.asset("assets/icons/search.svg"))
    ],
  );
}
