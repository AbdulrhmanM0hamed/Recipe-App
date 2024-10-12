import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';
import 'package:recipe_app/features/details/presentation/view/detials_view.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/meal.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.meal,
  });

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: ColorManger.green.withOpacity(.35),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(meal.strMealThumb,
                width: 90, height: 90, fit: BoxFit.cover)),
        title: Text(
          meal.strMeal,
          style: getBoldStyle(
              color: ColorManger.black,
              fontFamily: FontConstant.montserrat,
              fontSize: FontSize.size22),
        ),
        subtitle: Text(meal.strCategory),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetialsView(meal: meal),
            ),
          );
        },
      ),
    );
  }
}