import 'package:recipe_app/core/errors/failuer.dart';
import 'package:recipe_app/features/categories/data/model/category.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/meal.dart';
import 'package:dartz/dartz.dart';

abstract class CategoriesRepo {
  Future<Either<Failuer, List<Category>>> fetchCategories();
  
}
