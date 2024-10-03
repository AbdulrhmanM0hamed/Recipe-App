import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/errors/failuer.dart';
import 'package:recipe_app/core/util/api_service.dart';
import 'package:recipe_app/features/categories/data/repo/categories_repo.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/meal.dart';

class CategoriesRepoImpl implements CategoriesRepo {
  final ApiService apiService;

  CategoriesRepoImpl({required this.apiService});

  

  @override
  Future<Either<Failuer, List<Meal>>> fetchCategories() async {
    try {
      final data = await apiService.get(endpoint: 'categories.php');
      if (data['meals'] != null) {
        List<Meal> meals =
            (data['meals'] as List).map((item) => Meal.fromJson(item)).toList();

        return Right(meals);
      } else {
        return Left(ServerFailure(errMessage: "No meals found"));
      }
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errMessage: "Unexpected Error"));
    }
  }
  

}