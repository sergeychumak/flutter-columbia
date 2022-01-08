import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_columbia/layouts/main_layout.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.red,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: 'ArameMono',
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double xOffset = 0.0;
  double yOffset = 0;
  double rotate = 0;
  bool isBackgroundLayoutShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const MainLayout(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0,
      centerTitle: false,
      title: SvgPicture.asset(
        'assets/images/icon-main-logo.svg',
        height: 12,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/images/icon-search.svg',
            height: 32,
          ),
          color: Colors.white,
        ),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/icon-cart.svg',
                height: 32,
              ),
              color: Colors.white,
            ),
            Positioned(
              top: 10.0,
              left: 13.5,
              child: Container(
                transform: Matrix4.identity()..rotateZ(-33.0 * 3.1415 / 180),
                width: 19,
                height: 19,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                ),
                child: const Text(
                  '0',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ),
            )
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/images/icon-burger-menu.svg',
            height: 32,
          ),
          color: Colors.white,
        ),
      ],
    );
  }
}
