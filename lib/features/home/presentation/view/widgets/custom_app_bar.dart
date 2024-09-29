import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello , Abdo",
          style: getSemiBoldStyle(
              fontFamily: FontConstant.montserrat,
              color: ColorManger.lightGrey,
              fontSize: FontSize.size16),
        ),
        Text(
          "What Would you like\n to cook Today? ",
          style: getBoldStyle(
              fontFamily: FontConstant.montserrat,
              color: ColorManger.black,
              fontSize: FontSize.size24),
        )
      ],
    );
  }
}
