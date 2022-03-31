import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';

class SRCRankingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Tooltip(
              message: "All Categories",
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10),
                child: _filterStats("All Categories"),
              ),
            ),
            Spacer(),
            Tooltip(
              message: "All Chains",
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10),
                child: _filterStats("All Chains"),
              ),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: MyColors.secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "0" + (index + 1).toString(),
                          style: MyStyles.body,
                        ),
                        SizedBox(
                          width: 10,
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
                                  image: AssetImage(
                                    MyStrings
                                        .listCardImage[math.Random().nextInt(
                                      MyStrings.listCardImage.length,
                                    )],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.black,
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
                          width: 10,
                        ),
                        Text(
                          "Bored Ape Yacht Club",
                          style: MyStyles.caption,
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                    "assets/icons/logos_ethereum.png",
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12339,71",
                                  style: MyStyles.caption,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "202,24%",
                              style: TextStyle(
                                fontFamily: "GilroyLight",
                                color: MyColors.success,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        _cardBottomWidget(
                          "24h%",
                          "11,3%",
                          MyColors.success,
                        ),
                        _cardBottomWidget(
                          "Floor Price",
                          "96,68",
                          MyColors.white,
                        ),
                        _cardBottomWidget(
                          "Owners",
                          "6,38K",
                          MyColors.white,
                        ),
                        _cardBottomWidget(
                          "Items",
                          "10K",
                          MyColors.white,
                        ),
                      ],
                    )
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
        ),
      ],
    );
  }

  Widget _cardBottomWidget(String tittle, String text, Color color) {
    return Expanded(
      child: Column(
        children: [
          Text(
            tittle,
            style: MyStyles.smallCaption,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontFamily: "GilroyRegular",
              color: color,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _filterStats(String tittle) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: MyColors.secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tittle,
            style: MyStyles.body,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.arrow_drop_down,
            color: MyColors.white,
          ),
        ],
      ),
    );
  }
}
