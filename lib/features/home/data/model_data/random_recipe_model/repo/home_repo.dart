import 'package:recipe_app/core/errors/failuer.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/meal.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<Meal>>> fetchRandomRecipe();
  
}
