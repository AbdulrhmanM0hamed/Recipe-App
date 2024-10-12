import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/features/categories/presentation/view/categories_view.dart';
import 'package:recipe_app/features/home/presentation/view/home_view.dart';
import 'package:recipe_app/features/profile/presentation/view/profile.dart';
import 'package:recipe_app/features/search/presentation/view/search_view.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<CustomBottomNavBar> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  // إضافة صفحات (شاشات) لعرضها بناءً على الـ index
  final List<Widget> _pages = const [
    HomeView(),
    CategoriesView(),
    SearchView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: _page == 0 ? ColorManger.green : ColorManger.grey1,
          ),
          Icon(Icons.category,
              size: 30,
              color: _page == 1 ? ColorManger.green : ColorManger.grey1),
          Icon(FontAwesomeIcons.magnifyingGlass,
              color: _page == 2 ? ColorManger.green : ColorManger.grey1),
         
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: IndexedStack(
        index: _page,
        children: _pages,
      ),
    );
  }
}
