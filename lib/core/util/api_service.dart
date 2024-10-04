import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://www.themealdb.com/api/json/v1/1/";
  final _baseUrlNumberOfMeals =
      "https://www.themealdb.com/api/json/v1/1/filter.php?c=";

      final _baseUrlMeals =
      "https://www.themealdb.com/api/json/v1/1/search.php?s=";

  final Dio _dio;
  ApiService(this._dio);
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await _dio.get('$_baseUrl$endpoint');
    return response.data;
  }

  Future<Map<String, dynamic>> getNumber({required String endpoint}) async {
    var response = await _dio.get('$_baseUrlNumberOfMeals$endpoint');
    return response.data;
  }

  Future<Map<String, dynamic>> getMeals({required String endpoint}) async {
    var response = await _dio.get('$_baseUrlMeals$endpoint');
    return response.data;
  }

}
