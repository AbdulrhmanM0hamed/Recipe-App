import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';

class SubtileDetialsView extends StatelessWidget {
  const SubtileDetialsView({super.key, required this.subtile});
  final String subtile;
  @override
  Widget build(BuildContext context) {
    return Text(
      subtile,
      style: getRegularStyle(
          color: ColorManger.lightGrey,
          fontFamily: FontConstant.montserrat,
          fontSize: 15),
    );
  }
}