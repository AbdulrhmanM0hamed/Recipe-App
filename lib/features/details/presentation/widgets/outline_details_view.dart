import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';

class OutlineDetailsView extends StatelessWidget {
  const OutlineDetailsView({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: getBoldStyle(
        color: ColorManger.black,
        fontFamily: FontConstant.montserrat,
        fontSize: FontSize.size24,
      ),
    );
  }
}
