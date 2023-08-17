import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/models/RecipeBundel.dart';

class InfoCardList extends StatelessWidget {
  const InfoCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: recipeBundles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: InfoCard(
              index: index,
            ),
          );
        },
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Container(
        decoration: BoxDecoration(
          color: recipeBundles[index].color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      recipeBundles[index].title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      recipeBundles[index].description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Buildinfo(
                        iconSrc: "assets/icons/pot.svg",
                        no: recipeBundles[index].recipes.toString(),
                        text: "Recipes"),
                    const SizedBox(
                      height: 5,
                    ),
                    Buildinfo(
                        iconSrc: "assets/icons/chef.svg",
                        no: recipeBundles[index].chefs.toString(),
                        text: "Chefs"),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 0.80,
              child: Image.asset(
                recipeBundles[index].imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row Buildinfo(
      {required String text, required String iconSrc, required String no}) {
    return Row(
      children: [
        SvgPicture.asset(iconSrc),
        Text(
          " $no $text",
          style: const TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
