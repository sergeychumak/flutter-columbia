import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<Widget> brandsIconMock() {
  const List<String> data = [
    'adidas',
    'cat',
    'ellesse',
    'fila',
    'kappa',
    'new-era',
    'nike',
    'north-face',
    'puma',
    'reebok',
  ];
  List<Widget> list = [];
  for (var element in data) {
    list.add(
      SizedBox(
        height: 50,
        width: 70,
        child: SvgPicture.asset(
          "assets/images/brands/logo-$element.svg",
          color: Colors.white,
        ),
      ),
    );
  }
  return list;
}
