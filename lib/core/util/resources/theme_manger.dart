

import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    
    scaffoldBackgroundColor: ColorManger.primary,
    primaryColor: ColorManger.primary,
    primaryColorLight: ColorManger.lightprimary,
    primaryColorDark: ColorManger.darkprimary,
    disabledColor: ColorManger.grey1,
    splashColor: ColorManger.lightprimary,
    fontFamily: 'GT Sectra Fine',
    

    cardTheme: CardTheme(
      color: ColorManger.white,
      shadowColor: ColorManger.green,
      elevation: AppSize.s4,
    ),

    //app Bar theme
    appBarTheme: AppBarTheme(
        color: ColorManger.darkprimary,
        elevation: AppSize.s4,
        shadowColor: ColorManger.lightprimary,
        titleTextStyle: getRegularStyle(
            fontSize: FontSize.size16, color: ColorManger.white , fontFamily: 'Montserrat')),

    //button theme

    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManger.grey1,
      buttonColor: ColorManger.primary,
      splashColor: ColorManger.lightprimary,
    ),

    //elevated button theme

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s16)),
      backgroundColor: ColorManger.primary,
      textStyle:
          getRegularStyle(color: ColorManger.white, fontSize: FontSize.size17 , fontFamily: 'Montserrat'),
    )),

   

   
  );
}
