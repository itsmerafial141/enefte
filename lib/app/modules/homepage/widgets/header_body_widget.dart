import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class HeaderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: MyColors.white,
                  ),
                ),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/icons/logos_ethereum.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${math.Random().nextInt(999)},${math.Random().nextInt(99)}",
                      style: MyStyles.body,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 35,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  color: MyColors.dark,
                  child: Text(
                    "Balance",
                    style: MyStyles.smallCaption,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: MyColors.secondaryColor,
              ),
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage("assets/images/nft1.png"),
                  fit: BoxFit.cover),
            ),
            child: MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          )
        ],
      ),
    );
  }
}
