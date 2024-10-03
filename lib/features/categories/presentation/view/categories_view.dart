import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/categories/presentation/view/widgets/categories_view_body.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: AppPadding.p20,
                  horizontal: AppMargin.m14), // لتوفير مساحة حول النص
              child: Text(
                "Choose Category",
                style: getBoldStyle(
                  color: ColorManger.black,
                  fontFamily: FontConstant.montserrat,
                  fontSize: FontSize.size24,
                ),
              ),
            ),
            const Expanded(
              child: CategoriesViewBody(), // القسم الخاص بالـ GridView
            ),
          ],
        ),
      ),
    );
  }
}
