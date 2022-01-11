import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_columbia/components/brand_list.dart';
import 'package:flutter_columbia/components/footer.dart';
import 'package:flutter_columbia/components/instagram.dart';
import 'package:flutter_columbia/components/subscription.dart';
import 'package:flutter_columbia/mock_data/instagram_images_mock.dart';
import 'package:flutter_columbia/mock_data/recommended_products_mock.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BrandList(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'рекомендуем',
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '/',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 0.5,
                    aspectRatio: 1.3,
                  ),
                  items: recommendedProducts().map((element) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          // width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(color: Color(0xFFF6F6F6)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                  'assets/images/recommended_products/${element.urlImage}.jpeg'),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: Text(
                                    element.name,
                                    style: TextStyle(
                                      height: 1,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 4,
                                ),
                                child: Text(
                                  element.category,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Text(
                                '${element.price} ₽',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Instagram(),
          Subscription(),
          Footer(),
        ],
      ),
    );
  }
}
