// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

class WebScerren extends StatefulWidget {
  const WebScerren({Key? key}) : super(key: key);

  @override
  State<WebScerren> createState() => _WebScerrenState();
}

class _WebScerrenState extends State<WebScerren> {
  final PageController _pageController = PageController();
  int page = 0;

  navigate2Screen(int indexx) {
    _pageController.jumpToPage(indexx);
    setState(() {
      page = indexx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.newspaper,
              color: page == 0 ? primaryColor : secondaryColor,
            ),
            onPressed: () {
              navigate2Screen(0);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.calculate,
              color: page == 1 ? primaryColor : secondaryColor,
            ),
            onPressed: () {
              navigate2Screen(1);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.computer,
              color: page == 2 ? primaryColor : secondaryColor,
            ),
            onPressed: () {
              navigate2Screen(2);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.stairs_outlined,
              color: page == 3 ? primaryColor : secondaryColor,
            ),
            onPressed: () {
              navigate2Screen(3);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: page == 4 ? primaryColor : secondaryColor,
            ),
            onPressed: () {
              navigate2Screen(4);
            },
          ),
        ],
        backgroundColor: mobileBackgroundColor,
        title: Text(
          "Calculator",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),
          // color: primaryColor,
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {},
        physics: NeverScrollableScrollPhysics(),
        // controller: _pageController,
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
