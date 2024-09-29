
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/util/resources/assets_manger.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';

class RecommendationRecipe extends StatelessWidget {
  const RecommendationRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 210, 
          width: 155, 
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      AssetsManger.ferakh,
                      fit: BoxFit.cover,
                      width: 170, 
                      height: 220,
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
                  style: getBoldStyle(color: ColorManger.white , fontFamily: FontConstant.montserrat , fontSize: FontSize.size30) ,
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
