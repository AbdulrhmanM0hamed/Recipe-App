import 'package:flutter/material.dart';

import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/details/presentation/widgets/custom_head_details_view.dart';
import 'package:recipe_app/features/details/presentation/widgets/info_about_recipe.dart';
import 'package:recipe_app/features/details/presentation/widgets/outline_details_view.dart';
import 'package:recipe_app/features/details/presentation/widgets/recipe_name_with_rate.dart';
import 'package:recipe_app/features/details/presentation/widgets/subtile_details_view.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/meal.dart';

class DetailsViewBody extends StatelessWidget {
  final Meal meal;

  const DetailsViewBody({
    super.key,
    required this.meal,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHeadDetails(meal: meal),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecipeNameWithRate(meal: meal),
                const InfoAboutRecipe(),
                const SizedBox(height: 20),
                const OutlineDetailsView(title: "Category"),
                SubtileDetialsView(
                  subtile: meal.strCategory,
                ),
                const SizedBox(height: 20),
                const OutlineDetailsView(title: "Ingredients"),
                ...List.generate(meal.ingredients.length, (index) {
                  if (meal.ingredients[index] != null &&
                      meal.ingredients[index]!.isNotEmpty) {
                    return SubtileDetialsView(
                      subtile:
                          "${meal.ingredients[index]} - ${meal.measures[index] ?? "not found"}",
                    );
                  }
                  return const SizedBox.shrink();
                }),
                const SizedBox(height: 10),
                const OutlineDetailsView(title: "Instructions"),
                SubtileDetialsView(
                  subtile: meal.strInstructions,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
