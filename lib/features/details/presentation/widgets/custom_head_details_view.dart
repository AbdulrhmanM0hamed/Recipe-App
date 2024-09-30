import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/util/resources/route_manger.dart';

class CustomHeadDetialsView extends StatelessWidget {
  const CustomHeadDetialsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 3.2 / 3,
          child: SvgPicture.asset(
            "assets/images/wgba.svg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 40,
          left: 16,
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                if (Navigator.canPop(context)) {
                 
                } else {
                  context.go(RouteManger.bottomNavBar);
                }
              },
            ),
          ),
        ),
        Positioned(
          top: 345,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
