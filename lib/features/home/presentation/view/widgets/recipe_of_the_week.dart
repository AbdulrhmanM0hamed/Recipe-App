import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/string_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';

class RecipeOfTheWeek extends StatelessWidget {
  const RecipeOfTheWeek({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.recipeoftheweek,
          style: getBoldStyle(
              fontFamily: FontConstant.montserrat,
              color: ColorManger.black,
              fontSize: FontSize.size24),
        ),
        SizedBox(height: screenHeight * 0.02),
        SizedBox(
          height: screenHeight * 0.3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: RecipeCard(),
            ),
          ),
        ),
      ],
    );
  }
}

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.4, // عرض الكارد 40% من عرض الشاشة
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: SvgPicture.asset(
              "assets/images/akl.svg",
              height: screenHeight * 0.15, // 15% من ارتفاع الشاشة
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              AppString.recipeName,
              style: getSemiBoldStyle(
                color: ColorManger.black,
                fontSize: FontSize.size18,
                fontFamily: FontConstant.montserrat,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              AppString.description,
              style: getRegularStyle(
                color: ColorManger.lightGrey,
                fontSize: FontSize.size12,
                fontFamily: FontConstant.montserrat,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.timer, color: ColorManger.green),
                const Text("30 min"),
                const Icon(Icons.star, color: Colors.orange),
                const Text("4.5"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
