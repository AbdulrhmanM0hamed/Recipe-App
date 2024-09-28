import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/util/resources/constants_manger.dart';
import 'package:recipe_app/core/util/resources/route_manger.dart';
import 'package:recipe_app/features/splash/presentation/view/widgets/sliding_logo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}
class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController; 
  late Animation<Offset> slidingAnimation ;  

Timer? _timer;

 _setTimer() {
    _timer = Timer(const Duration(seconds: ConstantsManger.durationSplash ), _goNext);
   }

  _goNext() {
     context.go(RouteManger.bottomNavBar);
  }

  @override


  void initState() {
    super.initState();
    _setTimer();
    animationFunction();
 
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           SlidingLogo(slidingAnimation: slidingAnimation),
        ],
      )
    );
  }

    void animationFunction() {
    animationController = AnimationController(vsync: this , duration: const Duration(seconds: ConstantsManger.durationAnimation) );
    slidingAnimation = Tween <Offset>(begin: const Offset(0, 2), end: const Offset(0, 0) ).animate(animationController);
    animationController.forward();
    
  }
}
