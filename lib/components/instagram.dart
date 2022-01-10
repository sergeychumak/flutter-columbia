import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_columbia/mock_data/instagram_images_mock.dart';

class Instagram extends StatelessWidget {
  const Instagram({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 8,
            ),
            child: Text(
              '@ urbanvibesofficial',
              style: TextStyle(fontSize: 22),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1,
            ),
            items: instagramImagesMock().map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    // width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    // decoration: BoxDecoration(color: Colors.amber),
                    child: Image.asset('assets/images/instagram/$i.jpeg'),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
