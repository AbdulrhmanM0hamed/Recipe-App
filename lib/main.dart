
import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/route_manger.dart';
import 'package:recipe_app/core/util/resources/theme_manger.dart';
import 'package:recipe_app/features/splash/presentation/view/splash_view.dart';

void main() async {
 runApp(const RecipeApp()) ; 
}


class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme()
     
    ); 
  }
}