import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/util/api_service.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/features/categories/data/model/category.dart';
import 'package:recipe_app/features/categories/presentation/view/view_model/number_of_recipe_cubit/cubit/number_of_recipe_cubit.dart';
import 'package:recipe_app/features/meals_view/data/repo/meals_repo_impl.dart';
import 'package:recipe_app/features/meals_view/presentation/view/meal_view.dart';
import 'package:recipe_app/features/meals_view/presentation/view_model/cubit/meals_cubit.dart';

class CategoryCard extends StatelessWidget {
  final String categoryName;
  final String categoryThumb;
  final CategoryMeal category;
  const CategoryCard(
      {super.key,
      required this.categoryName,
      required this.categoryThumb,
      required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) =>
                  MealsCubit(MealsRepoImpl(ApiService(Dio())))..fetchedMeals(categoryName), // إرسال اسم الصنف هنا
              child: Mealscreen(category: category),
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: ColorManger.greenlight,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  categoryThumb,
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width * .4,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              categoryName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            BlocBuilder<NumberOfRecipeCubit, NumberOfRecipeState>(
              builder: (context, recipeState) {
                if (recipeState is NumberOfRecipeSuccessState) {
                  return Text(
                    '${recipeState.number_of_recipe.length} meals',
                    style: TextStyle(fontSize: 14, color: ColorManger.grey1),
                  );
                } else if (recipeState is NumberOfRecipeFailureState) {
                  return Text(recipeState.errMessage);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
