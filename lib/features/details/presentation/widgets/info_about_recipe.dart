import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';

class InfoAboutRecipe extends StatelessWidget {
  const InfoAboutRecipe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("By Rachel William",
          style: getRegularStyle(
              fontFamily: FontConstant.montserrat,
              color: ColorManger.lightGrey,
              fontSize: FontSize.size14)),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Icon(Icons.access_time_rounded, color: ColorManger.lightGrey),
          const SizedBox(width: 3),
          Text(
            "10 mins",
            style: getRegularStyle(
                color: ColorManger.lightGrey,
                fontFamily: FontConstant.montserrat,
                fontSize: 15),
          ),
          const SizedBox(width: 20),
          Icon(Icons.bar_chart_rounded, color: ColorManger.lightGrey),
          const SizedBox(width: 3),
          Text(
            "Medium",
            style: getRegularStyle(
                color: ColorManger.lightGrey,
                fontFamily: FontConstant.montserrat,
                fontSize: 15),
          ),
          const SizedBox(width: 20),
          Icon(FontAwesomeIcons.fireFlameCurved, color: ColorManger.lightGrey),
          const SizedBox(width: 3),
          Text(
            "512 cal",
            style: getRegularStyle(
                color: ColorManger.lightGrey,
                fontFamily: FontConstant.montserrat,
                fontSize: 15),
          )
        ],
      ),
    ]);
  }
}
