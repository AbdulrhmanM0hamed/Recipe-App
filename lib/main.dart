import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/util/api_service.dart';
import 'package:recipe_app/core/util/resources/theme_manger.dart';
import 'package:recipe_app/core/util/service_locator.dart';
import 'package:recipe_app/features/categories/data/repo/categories_repo.dart';
import 'package:recipe_app/features/categories/data/repo/categories_repo_impl.dart';
import 'package:recipe_app/features/categories/presentation/view_model/cubit/categories_cubit.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/repo/home_repo_impl.dart';
import 'package:recipe_app/features/home/presentation/view_model/cubit/random_recipe_cubit.dart';
import 'package:recipe_app/features/splash/presentation/view/splash_view.dart';

void main() async {
  setupServiceLocater();
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
          create: (context) => CategoriesCubit(
            CategoriesRepoImpl(ApiService(Dio()))
           
          ),
        ),
      ],
      child: MaterialApp(
          home: const SplashView(),
          debugShowCheckedModeBanner: false,
          theme: getApplicationTheme()),
    );
  }
}
