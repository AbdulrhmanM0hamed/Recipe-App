import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app/features/categories/data/model/category.dart';
import 'package:recipe_app/features/categories/data/repo/categories_repo.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this.categoriesRepo) : super(CategoriesInitial());
  CategoriesRepo categoriesRepo;

  Future<void> fetchCategories() async {
    var result = await categoriesRepo.fetchCategories();

    result.fold((failure) {
      emit(CategoriesFailureState(errMessage: failure.errMessage));
    }, (category) {
      emit(CategoriesSuccessState(categories: category));
    });
  }
}
