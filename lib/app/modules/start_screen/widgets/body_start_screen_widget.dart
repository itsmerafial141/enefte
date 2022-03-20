import 'package:flutter/material.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';
import 'circle_decoration_widget.dart';

class BodyStartScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Stack(
            children: [
              CircleDecorationWidget(
                x: -50,
                y: -50,
                z: 0,
                color: MyColors.secondaryColor,
              ),
              CircleDecorationWidget(
                x: -20,
                y: -70,
                z: 0,
                color: MyColors.primaryColor,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 60,
                  left: 20,
                ),
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  "All NFTs are\ncertifiably unique\nand ownable",
                  style: MyStyles.heading1,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "A credible and excellent marketplace for non-fungible token.",
                style: MyStyles.bodyDisable,
              )
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
