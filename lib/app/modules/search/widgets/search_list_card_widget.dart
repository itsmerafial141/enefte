import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';

class SRCListCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(
          5,
          (index) {
            return Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColors.secondaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 144,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/nft1.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)].toUpperCase()}"
                        "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                        "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)]}"
                        "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                        "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)]}",
                        style: MyStyles.smallCaption,
                      ),
                      Spacer(),
                      Image(
                        height: 20,
                        width: 20,
                        color: MyColors.white,
                        image: AssetImage(
                          "assets/icons/Icon Like.png",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${math.Random().nextInt(999)}",
                        style: MyStyles.caption,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Wake Up #${math.Random().nextInt(99)}",
                    style: MyStyles.caption,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 90,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 1,
                        color: MyColors.primaryColor,
                      ),
                    ),
                    child: Row(
                      children: [
                        Image(
                          height: 15,
                          width: 15,
                          image: AssetImage(
                            "assets/icons/logos_ethereum.png",
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "2,75 ETH",
                          style: MyStyles.caption,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
