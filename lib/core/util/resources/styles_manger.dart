import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color,
    String fontfamily, FontStyle fontStyle) {
  return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontFamily: fontfamily,
      fontStyle: fontStyle);
}

TextStyle getRegularStyle(
    {double fontSize = FontSize.size12,
    required Color color,
    required String fontFamily,
    FontStyle? fontStyle}) {
  return _getTextStyle(fontSize, FontWeightManger.Regular, color, fontFamily,
      fontStyle ?? FontStyle.normal);
}

// Medium style
TextStyle getMediumStyle(
    {double fontSize = FontSize.size12,
    required Color color,
    required String fontFamily,
    FontStyle? fontStyle}) {
  return _getTextStyle(fontSize, FontWeightManger.Medium, color, fontFamily,
      fontStyle ?? FontStyle.normal);
}

// Light style
TextStyle getLightStyle(
    {double fontSize = FontSize.size12,
    required Color color,
    required String fontFamily,
    FontStyle? fontStyle}) {
  return _getTextStyle(fontSize, FontWeightManger.Light, color, fontFamily,
      fontStyle ?? FontStyle.normal);
}

// Bold style
TextStyle getBoldStyle(
    {double fontSize = FontSize.size12,
    required Color color,
    required String fontFamily, // اجعل fontFamily مطلوبًا
    FontStyle? fontStyle}) {
  return _getTextStyle(fontSize, FontWeightManger.Bold, color, fontFamily,
      fontStyle ?? FontStyle.normal);
}

// SemiBold style
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.size12,
    required Color color,
    required String fontFamily,
    FontStyle? fontStyle // اجعل fontFamily مطلوبًا
    }) {
  return _getTextStyle(fontSize, FontWeightManger.SemiBold, color, fontFamily,
      fontStyle ?? FontStyle.normal);
}
