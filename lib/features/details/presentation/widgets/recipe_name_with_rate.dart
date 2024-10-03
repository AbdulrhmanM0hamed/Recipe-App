import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/meal.dart';

class RecipeNameWithRate extends StatelessWidget {
  const RecipeNameWithRate({
    super.key,
    required this.meal,
  });
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
              maxLines: 6,
              meal.strMeal ?? "not found",
              style: getBoldStyle(
                color: ColorManger.black,
                fontFamily: FontConstant.montserrat,
                fontSize: FontSize.size24,
              )),
        ),
        const Spacer(),
        const Icon(
          Icons.star,
          color: Colors.orange,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "4.5",
          style: getBoldStyle(
              color: ColorManger.black,
              fontFamily: FontConstant.montserrat,
              fontSize: FontSize.size18),
        ),
      ],
    );
  }
}
