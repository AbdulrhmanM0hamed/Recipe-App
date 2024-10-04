import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/errors/failuer.dart';
import 'package:recipe_app/core/util/api_service.dart';

import 'package:recipe_app/features/meals_view/data/model/meals_o_fcategories/meal.dart';
import 'package:recipe_app/features/meals_view/data/repo/meals_repo.dart';

class MealsRepoImpl implements MealsRepo {
  final ApiService apiService;

  MealsRepoImpl(this.apiService);

  @override
  Future<Either<Failuer, List<Meals>>> fetchMeals(String mealName) async {
    try {
      final data = await apiService.getMeals(endpoint: mealName);
      if (data['meals'] != null) {
        List<Meals> meals =
            (data['meals'] as List).map((item) => Meals.fromJson(item)).toList();

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

