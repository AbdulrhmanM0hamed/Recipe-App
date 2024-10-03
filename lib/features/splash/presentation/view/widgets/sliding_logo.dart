import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlidingLogo extends StatelessWidget {
  const SlidingLogo({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, child) => SlideTransition(
          position: slidingAnimation,
          child: SvgPicture.asset("assets/images/logo.svg")),
    );
  }
}
