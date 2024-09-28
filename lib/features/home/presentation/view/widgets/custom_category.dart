import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';
import 'package:recipe_app/features/home/presentation/view/models/categories_model.dart';

class CustomCategory extends StatelessWidget {
  final Category category;

  const CustomCategory({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorManger.white, borderRadius: BorderRadius.circular(10)),
      height: 80,
      width: 90,
      child: Column(
        children: [
        const  SizedBox(
            height: 2,
          ),
          SvgPicture.asset(
            category.image,
            fit: BoxFit.contain,
            width: 55,
            height: 55,
          ),
          const  SizedBox(
            height: 3,
          ),
          Text(
            category.title,
            style: getMediumStyle(
                color: ColorManger.black,
                fontFamily: FontConstant.gT_Sectra_Fine,
                fontSize: FontSize.size12),
          )
        ],
      ),
    );
  }
}