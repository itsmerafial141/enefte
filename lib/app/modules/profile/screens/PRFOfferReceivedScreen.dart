// ignore_for_file: file_names
import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';

class PRFOfferReceivedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: MyColors.secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.width * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            MyStrings.listCardImage[math.Random().nextInt(
                              MyStrings.listCardImage.length,
                            )],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Mosu #${math.Random().nextInt(9999)}",
                      style: MyStyles.body,
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Image(
                              height: 10,
                              width: 10,
                              image: AssetImage(
                                "assets/icons/logos_ethereum.png",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${math.Random().nextInt(9)},${math.Random().nextInt(99)}",
                              style: MyStyles.caption,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${math.Random().nextInt(60)} minutes ago",
                          style: MyStyles.smallCaption,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        children: [
                          Text(
                            "USD",
                            style: MyStyles.smallCaption,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "\$${math.Random().nextInt(9999)},${math.Random().nextInt(999)}",
                            style: MyStyles.caption,
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "Floor Diff.",
                            style: MyStyles.smallCaption,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${math.Random().nextInt(99)}%",
                            style: MyStyles.caption,
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "From",
                            style: MyStyles.smallCaption,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "NFTmagicBEER",
                            style: TextStyle(
                              fontFamily: "GilroyRegular",
                              color: MyColors.primaryColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "Expiration",
                            style: MyStyles.smallCaption,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${math.Random().nextInt(99)} months",
                            style: MyStyles.caption,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (_, __) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 10,
      ),
    );
  }
}
