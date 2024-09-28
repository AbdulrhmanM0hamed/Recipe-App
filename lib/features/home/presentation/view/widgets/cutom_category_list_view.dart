import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/assets_manger.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/home/presentation/view/models/categories_model.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/custom_category.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
     
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Padding(
    
          padding: const EdgeInsets.symmetric(horizontal: AppMargin.m5),
          child: CustomCategory(
            category: categories[index],
          ),
        ),
      ),
    );
  }
}

List<Category> categories = [
  Category(image: AssetsManger.breakfast, title: "Breakfast"),
  Category(image: AssetsManger.lunch, title: "Lunch"),
  Category(image: AssetsManger.dinner, title: "Dinner"),
  Category(image: AssetsManger.dessert, title: "Dessert"),
];
