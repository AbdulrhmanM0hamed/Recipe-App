import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';

class WatchVideoYoutupe extends StatelessWidget {
  const WatchVideoYoutupe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: ElevatedButton.icon(
          onPressed: () {
            
          },
          icon:  Icon(
            Icons.play_arrow_sharp,
            color: ColorManger.white,
            size: 30,
          ),
          label: Text(
            "Watch Video",
            style: getRegularStyle(
              color: ColorManger.white,
              fontFamily: FontConstant.montserrat,
              fontSize: FontSize.size22,
            ),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12),
            backgroundColor: ColorManger.green, // استخدم اللون المناسب
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}

