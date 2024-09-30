import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/util/resources/route_manger.dart';
import 'package:recipe_app/core/util/resources/string_manger.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/custom_outline.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/custom_text_field.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/cutom_category_list_view.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/recipe_of_the_week.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/recommendation_recipe.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05, 
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
                textbutton: AppString.seeAll,
                title: AppString.categories,
              ),
              SizedBox(height: screenHeight * 0.01), 
              
            
              SizedBox(
                height: screenHeight * 0.1, 
                child: const CustomCategoryListView(),
              ),
              SizedBox(height: screenHeight * 0.02), 
              
              const CustomOutLine(
                textbutton: AppString.seeAll,
                title: AppString.recommendation,
              ),
              SizedBox(height: screenHeight * 0.01), 
              
              SizedBox(
                height: screenHeight * 0.26, 
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02), 
                    child: GestureDetector(
                      onTap: () {
                        context.go(RouteManger.detials);
                      },
                      child: const RecommendationRecipe(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02), 

              const RecipeOfTheWeek(),
            ],
          ),
        ),
      ),
    );
  }
}
