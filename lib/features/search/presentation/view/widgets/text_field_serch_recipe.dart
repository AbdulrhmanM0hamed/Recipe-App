import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/features/meals_view/presentation/view_model/cubit/meals_cubit.dart';

class TextFieldSerchRecipe extends StatelessWidget {
  const TextFieldSerchRecipe({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: "Enter a recipe name",
        hintStyle:
            TextStyle(color: ColorManger.grey1), 
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide:
              BorderSide(color: ColorManger.green), 
        ),
        filled: true,
        fillColor: ColorManger.white, 
        contentPadding:
            const EdgeInsets.all(16), 
      ),
      style: TextStyle(
        fontFamily: FontConstant.montserrat,
        fontSize: FontSize.size16,
        color: ColorManger.black,
      ),
      onSubmitted: (value) {
        final mealsCubit = BlocProvider.of<MealsCubit>(context);
        mealsCubit.fetchedMeals(value);
      },
    );
  }
}