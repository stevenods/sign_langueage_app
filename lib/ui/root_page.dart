// ignore_for_file: depend_on_referenced_packages

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sped_app/constants.dart';
import 'package:sped_app/models/topics.dart';
//import 'package:sped_app/ui/scan_page.dart';
import 'package:sped_app/ui/screens/sign_page.dart';
import 'package:sped_app/ui/screens/sign_test/test_home.dart';
//import 'package:sped_app/ui/screens/sign_language/sign_home.dart';
import 'package:sped_app/ui/screens/landing_page.dart';
//import 'package:sped_app/ui/screens/profile_page.dart';
import 'package:page_transition/page_transition.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Topic> favorites = [];
  List<Topic> myCart = [];

  int _bottomNavIndex = 0;

  //List of the pages
  List<Widget> _widgetOptions() {
    return [
      const LandingPage(),
      const QuizPage(),
    ];
  }

  //List of the pages icons
  List<IconData> iconList = [
    Icons.science,
    Icons.text_snippet,
  ];

  //List of the pages titles
  List<String> titleList = [
    'Learn Science',
    'Practice Sign Language',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titleList[_bottomNavIndex],
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ],
        ),
        backgroundColor: Constants.primaryColor,
        elevation: 0.0,
      ),
      body: IndexedStack(
        index: _bottomNavIndex,
        children: _widgetOptions(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(
              child: const SignPage(),
              type: PageTransitionType.bottomToTop,
            ),
          );
        },
        backgroundColor: Constants.primaryColor,
        child: const Icon(Icons.sign_language),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: Constants.primaryColor,
        activeColor: Constants.primaryColor,
        inactiveColor: Colors.black.withOpacity(.5),
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(
            () {
              _bottomNavIndex = index;
            },
          );
        },
      ),
    );
  }
}
