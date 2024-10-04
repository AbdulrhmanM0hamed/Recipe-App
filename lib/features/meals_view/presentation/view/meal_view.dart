import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/categories/data/model/category.dart';
import 'package:recipe_app/features/meals_view/presentation/view/widgets/custom_grid_view.dart';

class Mealscreen extends StatelessWidget {
  final CategoryMeal category; // Using category only

  const Mealscreen(
      {super.key, required this.category}); // Removed unnecessary parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text(
          category.strCategory,
          style: getBoldStyle(
            color: ColorManger.black,
            fontFamily: FontConstant.montserrat,
            fontSize: FontSize.size24,
          ),
        ),
        backgroundColor: ColorManger.primary,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: CustomGridView(category: category),
      ),
    );
  }
}
