import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/util/api_service.dart';
import 'package:recipe_app/core/util/resources/assets_manger.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/features/categories/data/model/category.dart';
import 'package:recipe_app/features/details/presentation/view/detials_view.dart';
import 'package:recipe_app/features/meals_view/data/repo/meals_repo_impl.dart';
import 'package:recipe_app/features/meals_view/presentation/view_model/cubit/meals_cubit.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key, required this.category});

  final CategoryMeal category;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealsCubit, MealsState>(
      builder: (context, state) {
        if (state is MealsSuccessState) {
          return GridView.custom(
            gridDelegate: SliverWovenGridDelegate.count(
              crossAxisCount: 2,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
              pattern: const [
                WovenGridTile(1),
                WovenGridTile(
                  10 / 14,
                  crossAxisRatio: 0.90,
                  alignment: AlignmentDirectional.center,
                ),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
              childCount: state.meals.length,
              (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetialsView(meal: state.meals[index]),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: ColorManger.greenlight,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            state.meals[index].strMealThumb,
                            height: index.isEven ? 200 : 190,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        state.meals[index].strMeal,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        category.strCategory,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      const SizedBox(height: 3),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 18,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "Review 4.5", // استبدل التقييم بقيمة ديناميكية
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      const SizedBox(height: 3),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else if (state is MealsFailureState) {
          return Center(child: Text(state.errMessage));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
