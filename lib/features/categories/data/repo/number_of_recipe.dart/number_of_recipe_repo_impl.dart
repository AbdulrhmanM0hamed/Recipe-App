import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/errors/failuer.dart';
import 'package:recipe_app/core/util/api_service.dart';
import 'package:recipe_app/features/categories/data/model/category.dart';
import 'package:recipe_app/features/categories/data/repo/categories_repo.dart';
import 'package:recipe_app/features/categories/data/repo/number_of_recipe.dart/number_of_recipe_repo.dart';

class NumberOfRecipeRepoImpl implements NumberOfRecipeRepo {
  final ApiService apiService;

  NumberOfRecipeRepoImpl(this.apiService);

  

  @override
  Future<Either<Failuer, List<CategoryMeal>>> fetchNumberOFRecipe(categoryName) async {
       try {
      final data = await apiService.get(endpoint: 'categories.php');
      if (data['meals'] != null) {
        List<CategoryMeal> number_of_recipe =(data['meals'] as List).map((item) => CategoryMeal.fromJson(item)).toList();

        return Right(number_of_recipe);
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
  