import 'package:recipe_app/core/errors/failuer.dart';
import 'package:recipe_app/features/categories/data/model/category.dart';
import 'package:dartz/dartz.dart';

abstract class CategoriesRepo {
  Future<Either<Failuer, List<CategoryMeal>>> fetchCategories();
}
