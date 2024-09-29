import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipe_app/core/util/resources/assets_manger.dart';
import 'package:recipe_app/core/util/resources/string_manger.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        
          hintText: AppString.search ,
          prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
          suffixIcon: SvgPicture.asset(
            AssetsManger.filter,
            fit: BoxFit.none,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16))),
    );
  }
}
