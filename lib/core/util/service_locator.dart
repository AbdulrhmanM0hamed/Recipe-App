import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:recipe_app/core/util/api_service.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/repo/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocater() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
