import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wage/presentation/pages/signin/components/welcome.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import '../home/home_page.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});
  static String get routeName => 'nav';
  static String get routeLocation => '/';

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: global.background,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: global.primary,
        child: Icon(Icons.sync_alt),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        color: global.background,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: NavigationBar(
          height: 70.h,
          backgroundColor: global.background,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: <Widget>[
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                color: global.primary,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.history,
                color: global.primary,
              ),
              label: 'History',
            ),
            SizedBox(width: 48.0),
            NavigationDestination(
              selectedIcon: Icon(Icons.book),
              icon: Icon(Icons.bookmark_border),
              label: 'Saved',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.bookmark),
              icon: Icon(Icons.bookmark_border),
              label: 'Saved',
            ),
          ],
        ),
      ),
      body: <Widget>[
        Container(
          child: HomePage(),
        ),
        Container(
          child: HomePage(),
        ),
        Container(
          child: WelcomeBody(),
        ),
        Container(
          child: WelcomeBody(),
        ),
        Container(
          child: WelcomeBody(),
        ),
      ][currentPageIndex],
    );
  }
}
