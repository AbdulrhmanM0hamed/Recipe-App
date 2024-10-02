import 'package:flutter/material.dart';

import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/details/presentation/widgets/custom_head_details_view.dart';
import 'package:recipe_app/features/details/presentation/widgets/info_about_recipe.dart';
import 'package:recipe_app/features/details/presentation/widgets/outline_details_view.dart';
import 'package:recipe_app/features/details/presentation/widgets/recipe_name_with_rate.dart';
import 'package:recipe_app/features/details/presentation/widgets/subtile_details_view.dart';

class DetialsViewBody extends StatelessWidget {
  const DetialsViewBody({super.key, });


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHeadDetails(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecipeNameWithRate(),
                InfoAboutRecipe(),
                SizedBox(height: 20),
                OutlineDetailsView(title: "Description"),
                SubtileDetialsView(
                  subtile: "subtile",
                ),
                SizedBox(height: 20),
                OutlineDetailsView(title: "Ingredients"),
                SubtileDetialsView(
                  subtile: "subtile",
                ),
                SizedBox(height: 10),
                OutlineDetailsView(title: "How To Prepare"),
                SubtileDetialsView(
                  subtile: """
  1. تحضير المكرونة:
  في وعاء كبير، ضعي الماء على النار حتى يغلي وأضيفي الملح.
  أضيفي المكرونة واتركيها تسلق حتى تصبح نصف ناضجة، ثم صفيها وضعيها جانباً.

  
  وبذلك تكون قد حضرت وجبة مكرونة بالبشاميل شهية في البيت!
  """,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

