import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class SRCListCollectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: GridView.count(
        // childAspectRatio: 0.85,
        physics: NeverScrollableScrollPhysics(),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        shrinkWrap: true,
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return Container(
            height: 75,
            width: 148,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(
                math.Random().nextInt(255),
                math.Random().nextInt(255),
                math.Random().nextInt(255),
                1,
              ),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: MyColors.secondaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/nft1.png"),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: MyColors.secondaryColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image(
                              height: 10,
                              width: 10,
                              image: AssetImage(
                                "assets/icons/ic_round-verified.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "DourDarcels",
                        style: MyStyles.caption,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Items",
                                  style: MyStyles.caption,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "10K",
                                  style: MyStyles.body,
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  "Owners",
                                  style: MyStyles.caption,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "4,93K",
                                  style: MyStyles.body,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
