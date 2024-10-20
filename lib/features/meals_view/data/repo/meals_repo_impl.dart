import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/errors/failuer.dart';
import 'package:recipe_app/core/util/api_service.dart';
import 'package:recipe_app/features/home/data/random_recipe_model/meal.dart';

import 'package:recipe_app/features/meals_view/data/repo/meals_repo.dart';

class MealsRepoImpl implements MealsRepo {
  final ApiService apiService;

  MealsRepoImpl(this.apiService);

  @override
  Future<Either<Failuer, List<Meal>>> fetchMeals(String search) async {
    try {
      final data = await apiService.getMeals(endpoint: search);
      if (data['meals'] != null) {
        List<Meal> meals =(data['meals'] as List).map((item) => Meal.fromJson(item)).toList();

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

