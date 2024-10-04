import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/categories/data/repo/number_of_recipe.dart/number_of_recipe_repo_impl.dart';
import 'package:recipe_app/features/categories/presentation/view/widgets/categories_view_body.dart';
import 'package:recipe_app/core/util/api_service.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final apiService = ApiService(Dio());
    final numberOfRecipeRepo = NumberOfRecipeRepoImpl(apiService);

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
            Expanded(
              child: CategoriesViewBody(
                  numberOfRecipeRepo: numberOfRecipeRepo), // تمرير الكائن هنا
            ),
          ],
        ),
      ),
    );
  }
}
