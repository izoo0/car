// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:car/screens/HomeView.dart';
import 'package:car/utils/myTheme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';

import 'utils/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = window.physicalSize.width;
    // final ThemeData themeData = Theme.of(context);
    final padding = EdgeInsets.symmetric(horizontal: 20, vertical: 5);
    final sidePadding = padding;
    return MaterialApp(
      // initialRoute: AppsRoute.home,
      // onGenerateRoute: AppsRoute.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: COLOR_PRIMARY,
        textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: COLOR_WHITE,
            title: Text(
              'Browse Cars',
              style: TextStyle(
                color: COLOR_THEME,
                fontSize: 35,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),
            ),
            actions: [
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.bars,
                  color: COLOR_THEME,
                ),
                onPressed: () {},
              )
            ],
          ),
          body: HomeView(),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_rounded),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded),
                label: 'Account',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: 'More',
              ),
            ],
            // currentIndex: _selectedIndex,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 18,
            unselectedFontSize: 18,
            iconSize: 35,
            // onTap: _onTap,
            elevation: 20,
          ),
        ),
      ),
    );
  }
}
