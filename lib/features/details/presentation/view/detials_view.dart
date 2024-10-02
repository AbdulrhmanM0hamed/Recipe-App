import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/route_manger.dart';
import 'package:recipe_app/features/details/presentation/widgets/detials_view_body.dart';
import 'package:recipe_app/features/details/presentation/widgets/watch_video.dart';

class DetialsView extends StatelessWidget {
  const DetialsView({super.key, this.route});

  final String? route;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: Stack(
        children: [
          DetialsViewBody(
          ),
          WatchVideoYoutupe(),
        ],
      ),
    );
  }
}
