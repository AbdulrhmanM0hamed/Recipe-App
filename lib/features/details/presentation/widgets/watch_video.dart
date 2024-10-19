import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';
import 'package:recipe_app/features/home/data/random_recipe_model/meal.dart';
import 'package:url_launcher/url_launcher.dart';

class WatchVideoYoutupe extends StatelessWidget {
  WatchVideoYoutupe({super.key, required this.meal});

  final Meal meal;

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
            launchCustomUr(context, meal.strYoutube);
          },
          icon: Icon(
            Icons.play_arrow_sharp,
            color: ColorManger.white,
            size: 30,
          ),
          label: Text(
            "Watvh Video",
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

Future<void> launchCustomUr(BuildContext context, String? url) async {
  if (url != null && url.isNotEmpty) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      customSnackBar(context, 'Cannot launch $url');
    }
  }
}

void customSnackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}
