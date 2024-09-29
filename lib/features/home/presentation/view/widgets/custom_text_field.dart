import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search any recipes",
          prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
          suffixIcon: SvgPicture.asset(
            "assets/images/filter.svg",
            fit: BoxFit.none,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16))),
    );
  }
}
