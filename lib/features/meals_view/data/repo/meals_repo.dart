import 'package:recipe_app/core/errors/failuer.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/meal.dart';
import 'package:recipe_app/features/meals_view/data/model/meals_o_fcategories/meal.dart';

abstract class MealsRepo {
  Future<Either<Failuer, List<Meal>>> fetchMeals( String categoryName );
  
}
