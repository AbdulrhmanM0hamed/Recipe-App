import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';
import 'package:recipe_app/features/details/presentation/view/detials_view.dart';
import 'package:recipe_app/features/home/presentation/view_model/cubit/random_recipe_cubit.dart';

class RecommendationRecipe extends StatelessWidget {
  const RecommendationRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<RandomRecipeCubit, RandomRecipeState>(
      builder: (context, state) {
        if (state is RandomRecipeSuccess) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.meals.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetialsView(meal: state.meals[index]),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.25,
                      width: screenWidth * 0.37,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(32),
                            child: Stack(
                              children: [
                                Image.network(
                                  state.meals[index].strMealThumb,
                                  fit: BoxFit.fill,
                                  width: screenWidth * 0.4,
                                  height: screenHeight * 0.25,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Text(
                              state.meals[index].strMeal,
                              style: getBoldStyle(
                                color: ColorManger.white,
                                fontFamily: FontConstant.montserrat,
                                fontSize: screenHeight * 0.03,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else if (state is RandomRecipeFailure) {
          return Text(state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
