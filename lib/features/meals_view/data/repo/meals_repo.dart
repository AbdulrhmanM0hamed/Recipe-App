import 'package:recipe_app/core/errors/failuer.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/features/meals_view/data/model/meals_o_fcategories/meal.dart';

abstract class MealsRepo {
  Future<Either<Failuer, List<Meals>>> fetchMeals(String mealName);
  
}
