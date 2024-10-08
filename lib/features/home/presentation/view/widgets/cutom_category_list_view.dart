import 'package:flutter/material.dart';

import 'package:recipe_app/core/util/resources/assets_manger.dart';

import 'package:recipe_app/core/util/resources/string_manger.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/home/presentation/models/categories_model.dart';
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
          onTap: () {},
          child: RandomRecipeCart(
            category: categories[index],
          ),
        ),
      ),
    );
  }
}

List<CategoryCart> categories = [
  CategoryCart(
      imagePath: AssetsManger.breakfast,
      title: AppString.breakfast,
      mealCount: 10),
  CategoryCart(
      imagePath: AssetsManger.lunch, title: AppString.lunch, mealCount: 10),
  CategoryCart(
      imagePath: AssetsManger.dinner, title: AppString.dinner, mealCount: 10),
  CategoryCart(
      imagePath: AssetsManger.dessert, title: AppString.dessert, mealCount: 10),
  CategoryCart(
      imagePath: AssetsManger.snacks, title: AppString.snacks, mealCount: 10),
  CategoryCart(
      imagePath: AssetsManger.drinks, title: AppString.drinks, mealCount: 10),
];
