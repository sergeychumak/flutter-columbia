import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Color colorBlack = const Color(0xFF000000);
Color colorYellow = const Color(0xFFF9D303);
Color colorText = const Color(0xFFADADAD);

List<Widget> listMenu() {
  const List<String> data = [
    'о нас',
    'адреса магазинов',
    'UVCommunity',
    'Подарочные карты',
    'Доставка и оплата',
    'Обмен и возврат',
    'Пользовательское соглашение',
    'Публичная оферта',
  ];
  List<Widget> list = [];
  for (var element in data) {
    list.add(Padding(
      padding: const EdgeInsets.only(
        bottom: 22,
      ),
      child: Text(
        element,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    ));
  }
  return list;
}

List<Widget> brandIcons() {
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
      Container(
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
