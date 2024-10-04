import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/features/categories/presentation/view/view_model/number_of_recipe_cubit/cubit/number_of_recipe_cubit.dart';
import 'package:recipe_app/features/categories/presentation/view_model/cubit/categories_cubit.dart';


class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (BuildContext context, state) {
        if (state is CategoriesSuccessState) {
          return GridView.builder(
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: state.categories.length - 1, 
            itemBuilder: (context, index) {
              final actualIndex = index >= 6 ? index + 1 : index;
              return Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: ColorManger.greenlight,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          state.categories[actualIndex].strCategoryThumb,
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width * .4,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      state.categories[actualIndex].strCategory,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    // BlocBuilder<NumberOfRecipeCubit , NumberOfRecipeState>(
                    //   builder: (context, state) {
                    //     return 
                     Text(
                        '5 meals',
                        style: TextStyle(fontSize: 14, color: ColorManger.grey1),
                      )
                    
                      
                    
                  ],
                ),
              );
            },
          );
        } else if (state is CategoriesFailureState) {
          return Text(state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
