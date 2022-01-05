import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config.dart';

class BackgroundLayout extends StatelessWidget {
  const BackgroundLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 100, 16, 50),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorBlack,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/images/icon-main-logo.svg'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: listMenu(),
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
                            color: colorText,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          padding: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            color: colorYellow,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          child: Text(
                            '24/7',
                            style: TextStyle(
                              color: colorBlack,
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
                        color: colorText,
                      ),
                    ),
                  ),
                  Text(
                    '© 2022 Urbanvibes',
                    style: TextStyle(
                      color: colorText,
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
                  color: colorYellow,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
