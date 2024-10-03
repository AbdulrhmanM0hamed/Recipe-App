import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/util/resources/assets_manger.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/features/details/presentation/view/detials_view.dart';
import 'package:recipe_app/features/home/presentation/view/models/categories_model.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: SliverWovenGridDelegate.count(
        crossAxisCount: 2,
        mainAxisSpacing: 3,
        crossAxisSpacing: 3,
        pattern: const [
          WovenGridTile(1),
          WovenGridTile(
            10 / 14,
            crossAxisRatio: 0.93,
            alignment: AlignmentDirectional.center,
          ),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(10),
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
                  child: SvgPicture.asset(
                    AssetsManger.ferakh, // استبدلها بأصول الصور
                    height: index.isEven ? 200 : 190,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Recipe Name", // يمكنك استخدام بيانات ديناميكية هنا
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 3),
              Text(
                category.title, // عرض اسم الصنف الممرر
                style: const TextStyle(color: Colors.grey, fontSize: 13),
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
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "Review 4.5", // يمكنك استبدال التقييم بقيمة ديناميكية
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              const SizedBox(height: 3),
            ],
          ),
        ),
      ),
    );
  }
}
