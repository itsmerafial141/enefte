import 'package:flutter/material.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class IntroductionBodyWidget extends StatelessWidget {
  const IntroductionBodyWidget({
    required this.heading,
    required this.body,
    required this.image,
  });

  final String heading;
  final String body;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
        ),
        Image(
          image: AssetImage(
            image,
          ),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.only(bottom: 100, top: 40),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: MyColors.secondaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              Text(
                heading,
                textAlign: TextAlign.center,
                style: MyStyles.heading1,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                body,
                textAlign: TextAlign.center,
                style: MyStyles.body,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
