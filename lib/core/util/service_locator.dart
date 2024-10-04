import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:recipe_app/core/util/api_service.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/repo/home_repo_impl.dart';
import 'package:recipe_app/features/categories/data/repo/categories_repo_impl.dart';
import 'package:recipe_app/features/categories/data/repo/number_of_recipe.dart/number_of_recipe_repo_impl.dart';
import 'package:recipe_app/features/meals_view/data/repo/meals_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // Register ApiService
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  // Register Repositories
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<CategoriesRepoImpl>(CategoriesRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<NumberOfRecipeRepoImpl>(NumberOfRecipeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<MealsRepoImpl>(MealsRepoImpl(getIt.get<ApiService>()));

  // Optionally, you can register the Cubits as well
  // However, it's recommended to register them in the UI layer or where they are actually used
  // getIt.registerFactory(() => CategoriesCubit(getIt.get<CategoriesRepoImpl>()));
  // getIt.registerFactory(() => NumberOfRecipeCubit(getIt.get<NumberOfRecipeRepoImpl>()));
  // getIt.registerFactory(() => MealsCubit(getIt.get<MealsRepoImpl>()));
}
