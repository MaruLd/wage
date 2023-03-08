import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wage/presentation/pages/setting/setting_page.dart';
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
              selectedIcon: Icon(
                Icons.home_outlined,
                color: global.primary,
              ),
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Trang Chủ',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.history,
                color: global.primary,
              ),
              icon: Icon(
                Icons.history,
              ),
              label: 'Lịch Sử',
            ),
            SizedBox(width: 48.0),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.topic_outlined,
                color: global.primary,
              ),
              icon: Icon(Icons.topic_outlined),
              label: 'Phiếu Lương',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.person,
                color: global.primary,
              ),
              icon: Icon(Icons.person),
              label: 'Cá Nhân',
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
          child: Text('empty'),
        ),
        Container(
          child: Text('empty'),
        ),
        Container(
          child: SettingPage(),
        ),
      ][currentPageIndex],
    );
  }
}
