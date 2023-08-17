import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    List proItmes = [
      {"text": "Saved Recipes", "svgSrc": "assets/icons/bookmark_fill.svg"},
      {"text": "Super Plan", "svgSrc": "assets/icons/chef_color.svg"},
      {"text": "Change Language", "svgSrc": "assets/icons/language.svg"},
      {"text": "Help", "svgSrc": "assets/icons/info.svg"}
    ];
    return Column(
      children: [
        Stack(clipBehavior: Clip.none, children: [
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              color: kPrimaryColor.withOpacity(1),
              height: 150,
            ),
          ),
          const Positioned(
            top: 45,
            right: 120,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage(
                      "assets/images/pic.png",
                    ),
                  ),
                ),
                Text(
                  "Jhon Doe",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Jasdahoasdasdn Doe",
                ),
              ],
            ),
          )
        ]),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            ...List.generate(
                proItmes.length,
                (index) => buildrowdetails(
                      svgSrc: proItmes[index]["svgSrc"],
                      text: proItmes[index]['text'],
                    ))
          ]),
        )
      ],
    );
  }

  Padding buildrowdetails({svgSrc, text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          SvgPicture.asset(
            svgSrc,
            width: 18,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(text),
          const Spacer(),
          SvgPicture.asset("assets/icons/back.svg")
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
