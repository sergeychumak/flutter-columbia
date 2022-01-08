import 'package:flutter/material.dart';

import '../mock_data/brands_icon_mock.dart';

class BrandList extends StatelessWidget {
  const BrandList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 4,
      ),
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: brandsIconMock(),
        ),
      ),
    );
  }
}
