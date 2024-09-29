import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/custom_outline.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/custom_text_field.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/cutom_category_list_view.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/recommendation_recipe.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; 

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(height: screenHeight * 0.04), 

            const CustomAppBar(),

            SizedBox(height: screenHeight * 0.02), 

            const CustomTextField(),

            SizedBox(height: screenHeight * 0.02),

            const CustomOutLine(
              textbutton: "see all",
              title: "Categories",
            ),

            SizedBox(height: screenHeight * 0.01),

            const SizedBox(
              height: 80,
              child: CustomCategoryListView(),
            ),

            SizedBox(height: screenHeight * 0.02),

            const CustomOutLine(
              textbutton: "see all",
              title: "Recommendation",
            ),

            SizedBox(height: screenHeight * 0.01),

            const Expanded( 
              child: RecommendationRecipe(),
            ),
          ],
        ),
      ),
    );
  }
}
