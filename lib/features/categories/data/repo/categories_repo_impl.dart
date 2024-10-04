import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/errors/failuer.dart';
import 'package:recipe_app/core/util/api_service.dart';
import 'package:recipe_app/features/categories/data/model/category.dart';
import 'package:recipe_app/features/categories/data/repo/categories_repo.dart';

class CategoriesRepoImpl implements CategoriesRepo {
  final ApiService apiService;

  CategoriesRepoImpl(this.apiService);

  @override
  Future<Either<Failuer, List<CategoryMeal>>> fetchCategories() async {
    try {
      final data = await apiService.get(endpoint: 'categories.php');
      if (data['categories'] != null) {
        List<CategoryMeal> categories = (data['categories'] as List)
            .map((item) => CategoryMeal.fromJson(item))
            .toList();

        return Right(categories);
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
