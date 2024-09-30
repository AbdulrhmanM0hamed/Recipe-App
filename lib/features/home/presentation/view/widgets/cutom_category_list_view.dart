import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recipe_app/core/util/resources/assets_manger.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/string_manger.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/home/presentation/view/models/categories_model.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/custom_category.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppMargin.m5),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoryDetailsScreen(category: categories[index]),
              ),
            );
          },
          child: CustomCategory(
            category: categories[index],
          ),
        ),
      ),
    );
  }
}

List<Category> categories = [
  Category(image: AssetsManger.breakfast, title: AppString.breakfast),
  Category(image: AssetsManger.lunch, title: AppString.lunch),
  Category(image: AssetsManger.dinner, title: AppString.dinner),
  Category(image: AssetsManger.dessert, title: AppString.dessert),
  Category(image: AssetsManger.snacks, title: AppString.snacks),
  Category(image: AssetsManger.drinks, title: AppString.drinks),
];



class CategoryDetailsScreen extends StatelessWidget {
  final Category category;

  const CategoryDetailsScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: CustomGridView(),
      ),
    );
  }
}

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      
  gridDelegate: SliverWovenGridDelegate.count(
    
    crossAxisCount: 2,
    mainAxisSpacing: 3,
    crossAxisSpacing: 3,
   
    pattern: const [
      
      WovenGridTile(1),
      WovenGridTile(6 / 5,
        crossAxisRatio: 0.92,
        
        alignment: AlignmentDirectional.centerEnd,
      ),
    ],
  ),
  childrenDelegate: SliverChildBuilderDelegate(
    childCount: 10 ,
    (context, index) => Container(
      decoration: BoxDecoration(
        color: ColorManger.grey1 ,
        borderRadius: BorderRadius.circular(16)
      ),
    ),
    
  ),
);
  }
}
