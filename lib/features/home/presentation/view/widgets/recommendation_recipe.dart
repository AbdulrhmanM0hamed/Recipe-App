import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecommendationRecipe extends StatelessWidget {
  const RecommendationRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 220,
          width: 170 ,
          child: AspectRatio(
            aspectRatio: 1.5 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32), 
              child: Container(
                color: Colors.grey.shade200, 
                child: SvgPicture.asset(
                  "assets/images/test3.svg",
                  fit: BoxFit.cover, 
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}