import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app/features/categories/data/model/number_of_meals/meal.dart';
import 'package:recipe_app/features/categories/data/repo/number_of_recipe.dart/number_of_recipe_repo.dart';

part 'number_of_recipe_state.dart';

class NumberOfRecipeCubit extends Cubit<NumberOfRecipeState> {
  NumberOfRecipeCubit(this.numberORrecipe) : super(NumberOfRecipeInitial());

  NumberOfRecipeRepo numberORrecipe;
Future<void> fetchNumberOFRecipe(String categoryName) async {
  emit(NumberOfRecipeLoadingState());
  try {
    var result = await numberORrecipe.fetchNumberOFRecipe(categoryName);

    result.fold(
      (failure) {
        emit(NumberOfRecipeFailureState(errMessage: failure.errMessage));
      },
      (numberORrecipe) {
        if (!isClosed) {
          emit(NumberOfRecipeSuccessState(number_of_recipe: numberORrecipe));
        }
      },
    );
  } catch (e) {
    emit(const NumberOfRecipeFailureState(errMessage: "Unexpected Error"));
  }
}
}
