import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/home/presentation/view/models/categories_model.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/custom_category.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/custom_categoy_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
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
          ),
          const SizedBox(
            height: AppSize.s16,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Search any recipes",
                prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
                suffixIcon: SvgPicture.asset(
                  "assets/images/filter.svg",
                  fit: BoxFit.none,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16))),
          ),
          const SizedBox(
            height: AppSize.s16,
          ),
          const SizedBox(
            height: AppSize.s12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: getSemiBoldStyle(
                    color: ColorManger.black,
                    fontFamily: FontConstant.montserrat,
                    fontSize: FontSize.size24),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "see all",
                    style: getBoldStyle(
                        color: ColorManger.green,
                        fontFamily: FontConstant.montserrat,
                        fontSize: FontSize.size16),
                  ))
            ],
          ),
          const SizedBox(
            height: AppSize.s12,
          ),
       const SizedBox(
            height: 80 ,
            child: CustomCategoryListView(),
          )
        ],
      ),
    ));
  }
}



