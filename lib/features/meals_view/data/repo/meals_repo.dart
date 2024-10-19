import 'package:recipe_app/core/errors/failuer.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/features/home/data/random_recipe_model/meal.dart';

abstract class MealsRepo {
  Future<Either<Failuer, List<Meal>>> fetchMeals( String search );

  
}
