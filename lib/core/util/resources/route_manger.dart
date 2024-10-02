// import 'package:go_router/go_router.dart';
// import 'package:recipe_app/features/details/presentation/view/detials_view.dart';
// import 'package:recipe_app/features/home/presentation/view/category_meals_view.dart';
// import 'package:recipe_app/features/home/presentation/view/home_view.dart';
// import 'package:recipe_app/features/home/presentation/view/models/categories_model.dart';
// import 'package:recipe_app/features/home/presentation/view/widgets/bottom_nav_bar.dart';
// import 'package:recipe_app/features/home/presentation/view/widgets/cutom_category_list_view.dart';
// import 'package:recipe_app/features/splash/presentation/view/splash_view.dart';

// class RouteManger {
//   static const String splashRoute = '/';
//   static const String homeview = '/home';
//   static const String searchview = '/search';
//   static const String bottomNavBar = '/bottomNavBar';
//   static const String categoryDetails = '/categoryDetails';
//   static const String detials = '/detials';
//    static const String categoryMeals = '/categoryMeals'; 

//   static final GoRouter router = GoRouter(
//     routes: [
//       GoRoute(
//         path: splashRoute,
//         builder: (context, state) => const SplashView(),
//       ),
//       GoRoute(
//         path: homeview,
//         builder: (context, state) => const HomeView(),
//       ),
//       GoRoute(
//         path: bottomNavBar,
//         builder: (context, state) => CustomBottomNavBar(),
//       ),
//   GoRoute(
//   path: categoryMeals,
//   builder: (context, state) {
//     final category = state.extra as Category; 
//     return CategoryMealscreen(category: category);
//   },
// ),
//       GoRoute(
//         path: detials,
//         builder: (context, state) {
//           final prevRoute = state.extra as String?  ;
//           return DetialsView(route: prevRoute);
//         },
//       ),
      
//     ],
//   );
// }
