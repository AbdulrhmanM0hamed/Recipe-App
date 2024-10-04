import 'package:recipe_app/core/errors/failuer.dart';
import 'package:recipe_app/features/categories/data/model/category.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/features/categories/data/model/number_of_meals/meal.dart';

abstract class NumberOfRecipeRepo {
  Future<Either<Failuer, List<NumberOfMeal>>> fetchNumberOFRecipe(String categoryName);
  
}
