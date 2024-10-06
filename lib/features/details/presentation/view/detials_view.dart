import 'package:flutter/material.dart';
import 'package:recipe_app/features/details/presentation/widgets/detials_view_body.dart';
import 'package:recipe_app/features/details/presentation/widgets/watch_video.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/meal.dart';

class DetialsView extends StatelessWidget {
  const DetialsView({super.key, required this.meal});
  final Meal meal;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DetailsViewBody(
            meal: meal,
          ),
          WatchVideoYoutupe(
            meal: meal,
          ),
        ],
      ),
    );
  }
}
