import 'package:flutter/material.dart';

List<Widget> footerMenu1Mock() {
  return buildFooterMenuWidget([
    'о нас',
    'адреса магазинов',
    'UVCommunity',
    'Подарочные карты',
  ]);
}

List<Widget> footerMenu2Mock() {
  return buildFooterMenuWidget([
    'Доставка и оплата',
    'Обмен и возврат',
    'Пользовательское соглашение',
    'Публичная оферта',
  ]);
}

List<Widget> buildFooterMenuWidget(List<String> data) {
  List<Widget> list = [];
  for (var element in data) {
    list.add(buildWidget(element));
  }
  return list;
}

Widget buildWidget(String name) {
  return Padding(
    padding: const EdgeInsets.only(
      bottom: 22,
    ),
    child: Text(
      name,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 16,
      ),
    ),
  );
}
