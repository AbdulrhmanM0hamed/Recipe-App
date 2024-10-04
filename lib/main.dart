import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/util/resources/theme_manger.dart';
import 'package:recipe_app/core/util/service_locator.dart';
import 'package:recipe_app/features/categories/data/repo/categories_repo_impl.dart';
import 'package:recipe_app/features/categories/data/repo/number_of_recipe.dart/number_of_recipe_repo_impl.dart';
import 'package:recipe_app/features/categories/presentation/view/view_model/number_of_recipe_cubit/cubit/number_of_recipe_cubit.dart';
import 'package:recipe_app/features/categories/presentation/view_model/cubit/categories_cubit.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/repo/home_repo_impl.dart';
import 'package:recipe_app/features/home/presentation/view_model/cubit/random_recipe_cubit.dart';
import 'package:recipe_app/features/meals_view/data/repo/meals_repo_impl.dart';
import 'package:recipe_app/features/meals_view/presentation/view_model/cubit/meals_cubit.dart';
import 'package:recipe_app/features/splash/presentation/view/splash_view.dart';

void main() async {
  setupServiceLocator();
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RandomRecipeCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) =>
              CategoriesCubit(
                getIt.get<CategoriesRepoImpl>(),
              ),
        ),
        BlocProvider(
          create: (context) =>
              NumberOfRecipeCubit(getIt.get<NumberOfRecipeRepoImpl>(),),
        ),
         BlocProvider(
          create: (context) =>
             MealsCubit(getIt.get<MealsRepoImpl>(),),
        ),
      ],
      child: MaterialApp(
          home: const SplashView(),
          debugShowCheckedModeBanner: false,
          theme: getApplicationTheme()),
    );
  }
}
