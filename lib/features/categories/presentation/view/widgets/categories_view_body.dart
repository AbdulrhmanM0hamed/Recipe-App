import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/route_manger.dart';
import 'package:recipe_app/features/home/presentation/view/category_meals_view.dart';
import 'package:recipe_app/features/home/presentation/view/models/categories_model.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
final categories = [
  Category(title: 'Meat', imagePath: "assets/images/categories/Meat.svg", mealCount: 20),
  Category(title: 'Chicken', imagePath: "assets/images/categories/Chicken.svg", mealCount: 25),
  Category(title: 'Goat Meat', imagePath: "assets/images/categories/GoatMeat.svg", mealCount: 15),
  Category(title: 'Fish', imagePath: "assets/images/categories/Fish.svg", mealCount: 30),
  Category(title: 'Vegetarian', imagePath: "assets/images/categories/Vegetarian.svg", mealCount: 40),
  Category(title: 'Pasta', imagePath: "assets/images/categories/Pasta.svg", mealCount: 18),
  Category(title: 'Desserts', imagePath: "assets/images/categories/Desserts.svg", mealCount: 50),
  Category(title: 'Soups', imagePath: "assets/images/categories/Soups.svg", mealCount: 12),
  Category(title: 'Grains', imagePath: "assets/images/categories/Grains.svg", mealCount: 22),
  Category(title: 'Salads', imagePath: "assets/images/categories/Salads.svg", mealCount: 28),
  Category(title: 'Beverages', imagePath: "assets/images/categories/Beverages.svg", mealCount: 10),
  Category(title: 'Seafood', imagePath: "assets/images/categories/Seafood.svg", mealCount: 14),
];
      
  



    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return GestureDetector(
          onTap: () {
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => CategoryMealscreen(category: category),
  ),
);     },
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
               color: ColorManger.greenlight,
              borderRadius: BorderRadius.circular(8)
            ),
           
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               SvgPicture.asset(category.imagePath ,
               height: 50,
                ),
                const SizedBox(height: 8),
                Text(
                  category.title,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${category.mealCount} meals',
                  style:  TextStyle(fontSize: 14 , color: ColorManger.grey1),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
