// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/screens/add_post.dart';
import 'package:instagram_app/screens/calc.dart';
import 'package:instagram_app/screens/commit.dart';
import 'package:instagram_app/screens/home.dart';
import 'package:instagram_app/screens/jobs.dart';
import 'package:instagram_app/screens/plan.dart';
import 'package:instagram_app/screens/profile.dart';
import 'package:instagram_app/screens/search.dart';
import 'package:instagram_app/screens/value.dart';
import 'package:instagram_app/shared/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileScerren extends StatefulWidget {
  const MobileScerren({Key? key}) : super(key: key);

  @override
  State<MobileScerren> createState() => _MobileScerrenState();
}

class _MobileScerrenState extends State<MobileScerren> {
  final PageController _pageController = PageController();

  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: mobileBackgroundColor,
          onTap: (index) {
            // navigate to the tabed page
            _pageController.jumpToPage(index);
            setState(() {
              currentPage = index;
            });

            // print(   "---------------    $index "  );
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.newspaper,
                  color: currentPage == 0 ? primaryColor : secondaryColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calculate,
                  color: currentPage == 1 ? primaryColor : secondaryColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.computer,
                  color: currentPage == 2 ? primaryColor : secondaryColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.stairs_outlined,
                  color: currentPage == 3 ? primaryColor : secondaryColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: currentPage == 4 ? primaryColor : secondaryColor,
                ),
                label: ""),
          ]),
      body: PageView(
        onPageChanged: (index) {
          print("------- $index");
        },
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Myvalue(),
          Mycalc(),
          Myplan(),
          Mycommit(),
          Myjobs()

          // Home(),
          // Search(),
          // AddPost(),
          // Center(child: Text("Love u ♥")),
          // Profile(),
        ],
      ),
    );
  }
}
