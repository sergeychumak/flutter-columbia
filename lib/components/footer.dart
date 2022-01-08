import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../mock_data/footer_menu_mock.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 50),
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 24.0,
            ),
            child: SvgPicture.asset(
              'assets/images/icon-main-logo.svg',
              height: 16,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...footerMenu1Mock(),
              SizedBox(
                height: 30,
              ),
              ...footerMenu2Mock(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 12,
                    ),
                    child: Row(
                      children: [
                        Text(
                          '8 (800) 777-00-08',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          padding: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          child: Text(
                            '24/7',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16,
                    ),
                    child: Text(
                      'support@urbanvibes.com',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text(
                    '© 2022 Urbanvibes',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 16.0,
                ),
                child: SvgPicture.asset(
                  'assets/images/icon-inst.svg',
                  width: 50,
                  color: Colors.yellow,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
