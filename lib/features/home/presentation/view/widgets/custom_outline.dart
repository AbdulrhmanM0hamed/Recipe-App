import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';

class CustomOutLine extends StatelessWidget {
  const CustomOutLine({
    super.key,
    required this.title,
    required this.textbutton,
  });
  final String title;
  final String textbutton;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: getSemiBoldStyle(
              color: ColorManger.black,
              fontFamily: FontConstant.montserrat,
              fontSize: FontSize.size24),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              textbutton,
              style: getBoldStyle(
                  color: ColorManger.green,
                  fontFamily: FontConstant.montserrat,
                  fontSize: FontSize.size16),
            ))
      ],
    );
  }
}
