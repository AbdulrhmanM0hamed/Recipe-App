import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/features/categories/data/model/number_of_meals/meal.dart';
import 'package:recipe_app/features/categories/data/repo/number_of_recipe.dart/number_of_recipe_repo.dart';

part 'number_of_recipe_state.dart';

class NumberOfRecipeCubit extends Cubit<NumberOfRecipeState> {
  NumberOfRecipeCubit(this.numberORrecipe) : super(NumberOfRecipeInitial());

NumberOfRecipeRepo numberORrecipe ; 

 Future<void> fetchNumberOFRecipe(String categoryName) async {
    emit(NumberOfRecipeLoadingState());
    var result = await numberORrecipe.fetchNumberOFRecipe(categoryName);

    result.fold(
      (failure) {
        emit(NumberOfRecipeFailureState(errMessage: failure.errMessage));
      },
      (number_of_recipe) {
        emit(NumberOfRecipeSuccessState(number_of_recipe:number_of_recipe ));
      },
    );
  }

}
