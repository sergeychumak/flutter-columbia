import 'package:flutter/material.dart';
import 'package:flutter_columbia/components/brand_list.dart';
import 'package:flutter_columbia/components/footer.dart';
import 'package:flutter_columbia/components/subscription.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          BrandList(),
          Subscription(),
          Footer(),
        ],
      ),
    );
  }
}
