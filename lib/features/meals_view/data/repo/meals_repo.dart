import 'package:recipe_app/core/errors/failuer.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/meal.dart';

abstract class MealsRepo {
  Future<Either<Failuer, List<Meal>>> fetchMeals( String search );
    Future<Either<Failuer, List<Meal>>> fetchCategories( String categoryName );

  
}
