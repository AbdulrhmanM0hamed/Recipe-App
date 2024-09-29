import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/assets_manger.dart';
import 'package:recipe_app/core/util/resources/string_manger.dart';
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
  Category(image: AssetsManger.breakfast, title: AppString.breakfast),
  Category(image: AssetsManger.lunch, title: AppString.lunch),
  Category(image: AssetsManger.dinner, title: AppString.dinner),
  Category(image: AssetsManger.dessert, title: AppString.dessert),
];
