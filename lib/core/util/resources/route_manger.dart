
import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/details/presentation/view/detials_view.dart';
import 'package:recipe_app/features/home/presentation/view/home_view.dart';
import 'package:recipe_app/features/home/presentation/view/widgets/bottom_nav_bar.dart';
import 'package:recipe_app/features/splash/presentation/view/splash_view.dart';

abstract class RouteManger {
  static const String splashRoute = '/' ;
  static const String homeview = '/home' ;
  static const String searchview = '/search' ;
  static const String bottomNavBar = '/bottomNavBar' ;



  static const String detials = '/detials' ;

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splashRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeview,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bottomNavBar,
        builder: (context, state) =>  CustomBottomNavBar(),
      ),
       GoRoute(
        path: detials,
        builder: (context, state) => const DetialsView(),
      ),
     
    ],
  );
}