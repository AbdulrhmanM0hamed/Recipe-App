import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/meal.dart';
import 'package:recipe_app/features/meals_view/presentation/view_model/cubit/meals_cubit.dart';
import 'package:recipe_app/features/search/presentation/view/widgets/crad_widget.dart';
import 'package:recipe_app/features/search/presentation/view/widgets/text_field_serch_recipe.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Search",
            style: getBoldStyle(
              color: ColorManger.black,
              fontFamily: FontConstant.montserrat,
              fontSize: FontSize.size30,
            ),
          ),
          const SizedBox(
            height: AppSize.s12,
          ),
          TextFieldSerchRecipe(searchController: searchController),
          const SizedBox(
            height: AppSize.s12,
          ),
          Text(
            "Results",
            style: getSemiBoldStyle(
              color: ColorManger.green,
              fontFamily: FontConstant.montserrat,
              fontSize: FontSize.size20,
            ),
          ),
          const SizedBox(
              height: AppSize.s12),

          BlocBuilder<MealsCubit, MealsState>(
            builder: (context, state) {
              if (state is MealsLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is MealsFailureState) {
                return Text(state.errMessage);
              } else if (state is MealsSuccessState) {
                final List<Meal> meals = state.meals;
                return Expanded(
                  child: ListView.builder(
                    itemCount: meals.length,
                    itemBuilder: (context, index) {
                      final meal = meals[index];
                      return CardWidget(meal: meal);
                    },
                  ),
                );
              } else {
                return const Center(child: Text('No results found.'));
              }
            },
          ),
        ],
      ),
    );
  }
}




