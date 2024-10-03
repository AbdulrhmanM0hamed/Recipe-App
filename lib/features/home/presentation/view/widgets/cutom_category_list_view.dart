import 'package:flutter/material.dart';

import 'package:recipe_app/core/util/resources/assets_manger.dart';

import 'package:recipe_app/core/util/resources/string_manger.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/home/presentation/view/category_meals_view.dart';
import 'package:recipe_app/features/home/presentation/view/models/categories_model.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/custom_category.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppMargin.m5),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoryMealscreen(
                  category: categories[index],
                ),
              ),
            );
          },
          child: CustomCategory(
            category: categories[index],
          ),
        ),
      ),
    );
  }
}

List<Category> categories = [
  Category(
      imagePath: AssetsManger.breakfast,
      title: AppString.breakfast,
      mealCount: 10),
  Category(
      imagePath: AssetsManger.lunch, title: AppString.lunch, mealCount: 10),
  Category(
      imagePath: AssetsManger.dinner, title: AppString.dinner, mealCount: 10),
  Category(
      imagePath: AssetsManger.dessert, title: AppString.dessert, mealCount: 10),
  Category(
      imagePath: AssetsManger.snacks, title: AppString.snacks, mealCount: 10),
  Category(
      imagePath: AssetsManger.drinks, title: AppString.drinks, mealCount: 10),
];
