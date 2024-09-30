import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/util/resources/assets_manger.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';

class RecommendationRecipe extends StatelessWidget {
  const RecommendationRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    // الحصول على عرض وارتفاع الشاشة
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.25, 
          width: screenWidth * 0.37,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      AssetsManger.ferakh,
                      fit: BoxFit.cover,
                      width: screenWidth * 0.4, 
                      height: screenHeight * 0.25, 
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.25), 
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ],
                ),
              ),
              
              Center(
                child: Text(
                  "Chicken Fillets",
                  style: getBoldStyle(
                    color: ColorManger.white,
                    fontFamily: FontConstant.montserrat,
                    fontSize: screenHeight * 0.03, 
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
