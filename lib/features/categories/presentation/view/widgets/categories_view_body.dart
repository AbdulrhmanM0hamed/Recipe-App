import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/categories/data/repo/number_of_recipe.dart/number_of_recipe_repo.dart';
import 'package:recipe_app/features/categories/presentation/view/view_model/number_of_recipe_cubit/cubit/number_of_recipe_cubit.dart';
import 'package:recipe_app/features/categories/presentation/view/widgets/category_cart.dart';
import 'package:recipe_app/features/categories/presentation/view_model/cubit/categories_cubit.dart';

class CategoriesViewBody extends StatelessWidget {
  final NumberOfRecipeRepo numberOfRecipeRepo;
  const CategoriesViewBody({super.key, required this.numberOfRecipeRepo});

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
            itemCount: state.categories.length -
                1, // حذف العنصر الأخير إذا كنت لا تريده
            itemBuilder: (context, index) {
              final actualIndex = index >= 6 ? index + 1 : index;

              final categoryName = state.categories[actualIndex].strCategory;
              final category = state.categories[actualIndex];

              return BlocProvider(
                create: (context) => NumberOfRecipeCubit(numberOfRecipeRepo) ..fetchNumberOFRecipe(category.strCategory),
                  
                child: CategoryCard(
                    categoryName: categoryName,
                    categoryThumb: state.categories[actualIndex].strCategoryThumb,
                    category: category),
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
