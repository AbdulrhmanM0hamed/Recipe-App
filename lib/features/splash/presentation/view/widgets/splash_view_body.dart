import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/util/resources/constants_manger.dart';
import 'package:recipe_app/features/categories/presentation/view_model/cubit/categories_cubit.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/bottom_nav_bar.dart';
import 'package:recipe_app/features/home/presentation/view_model/cubit/random_recipe_cubit.dart';
import 'package:recipe_app/features/splash/presentation/view/widgets/sliding_logo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  Timer? _timer;

  _setTimer() {
    _timer =
        Timer(const Duration(seconds: ConstantsManger.durationSplash), _goNext);
  }

  _goNext() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CustomBottomNavBar(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _setTimer();
    animationFunction();
    BlocProvider.of<RandomRecipeCubit>(context).fetchRandomRecipe();
     BlocProvider.of<CategoriesCubit>(context).fetchCategories();
     

  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlidingLogo(slidingAnimation: slidingAnimation),
      ],
    ));
  }

  void animationFunction() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: ConstantsManger.durationAnimation));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }
}
