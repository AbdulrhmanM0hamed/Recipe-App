import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/features/categories/data/model/number_of_meals/meal.dart';

part 'number_of_recipe_state.dart';

class NumberOfRecipeCubit extends Cubit<NumberOfRecipeState> {
  NumberOfRecipeCubit() : super(NumberOfRecipeInitial());



}
