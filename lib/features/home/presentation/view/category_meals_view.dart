import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/home/presentation/view/models/categories_model.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/custom_grid_view.dart';

class CategoryMealscreen extends StatelessWidget {
  final Category category; // Using category only

  const CategoryMealscreen({super.key, required this.category}); // Removed unnecessary parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
 if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                } else {
                  GoRouter.of(context).go(prevRoute);
                 
                }      
                  }, icon: Icon(Icons.arrow_back)),
        title: Text(
          category.title, 
          style: getBoldStyle(
            color: ColorManger.black,
            fontFamily: FontConstant.montserrat,
            fontSize: FontSize.size24,
          ),
        ),
        backgroundColor: ColorManger.primary,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: CustomGridView(category: category), // Pass the category to your custom grid view
      ),
    );
  }
}
