import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'components/main_loyaut/footer_widget.dart';
import 'config.dart';
import './layouts/background_layout.dart';

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
        primarySwatch: Colors.blue,
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
      body: Stack(
        children: [
          const BackgroundLayout(),
          AnimatedContainer(
            transform: Matrix4.translationValues(xOffset, yOffset, 1)
              ..rotateZ(-rotate * 3.1415927 / 180),
            duration: const Duration(milliseconds: 200),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Color(0xFFF9D303),
                  offset: Offset(-16, -16),
                )
              ],
            ),
            child: Column(
              children: [
                Container(
                  // height: 100,
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 10),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (isBackgroundLayoutShow) {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              rotate = 0;
                              isBackgroundLayoutShow = false;
                            });
                          } else {
                            setState(() {
                              xOffset = 200;
                              yOffset = 230;
                              rotate = 45;
                              isBackgroundLayoutShow = true;
                            });
                          }
                        },
                        icon: !isBackgroundLayoutShow
                            ? Icon(Icons.menu)
                            : Icon(Icons.backspace),
                        color: Colors.white,
                      ),
                      SvgPicture.asset(
                        "assets/images/icon-burger-menu.svg",
                        color: Colors.white,
                        width: 32,
                      ),
                      SvgPicture.asset(
                        'assets/images/icon-main-logo.svg',
                        height: 12,
                      ),
                      Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: colorYellow,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          child: const Text("0"),
                          alignment: Alignment.center)
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: brandIcons(),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/bnr-main-mv.jpeg',
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
