import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:recipe_app/core/util/api_service.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/repo/home_repo_impl.dart';
import 'package:recipe_app/features/categories/data/repo/categories_repo_impl.dart';
import 'package:recipe_app/features/categories/data/repo/number_of_recipe.dart/number_of_recipe_repo_impl.dart';
import 'package:recipe_app/features/meals_view/data/repo/meals_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<CategoriesRepoImpl>(CategoriesRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<NumberOfRecipeRepoImpl>(NumberOfRecipeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<MealsRepoImpl>(MealsRepoImpl(getIt.get<ApiService>()));

  
}
