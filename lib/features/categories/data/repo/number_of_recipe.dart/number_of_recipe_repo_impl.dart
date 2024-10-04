import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/errors/failuer.dart';
import 'package:recipe_app/core/util/api_service.dart';
import 'package:recipe_app/features/categories/data/model/number_of_meals/meal.dart';
import 'package:recipe_app/features/categories/data/repo/number_of_recipe.dart/number_of_recipe_repo.dart';

class NumberOfRecipeRepoImpl implements NumberOfRecipeRepo {
  final ApiService apiService;

  NumberOfRecipeRepoImpl(this.apiService);

  @override
  Future<Either<Failuer, List<NumberOfMeal>>> fetchNumberOFRecipe(
      String categoryName) async {
    try {
      final data = await apiService.getNumber(endpoint: categoryName);

      if (data['meals'] != null) {
        List<NumberOfMeal> numberOfRecipe = (data['meals'] as List)
            .map((item) => NumberOfMeal.fromJson(item))
            .toList();

        return Right(numberOfRecipe);
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
