import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';

class SRCActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Tooltip(
              message: "All Event Type",
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10),
                child: _filterStats("All Event Type"),
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
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: MyColors.secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 83,
                          width: 82,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Genesis kakira",
                              style: MyStyles.smallCaption,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Kakira #5233",
                              style: MyStyles.body,
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Sale",
                              style: TextStyle(
                                fontFamily: "GilroyLight",
                                color: MyColors.success,
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                    "assets/icons/leaf.png",
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
                              "6 Minutes ago",
                              style: MyStyles.smallCaption,
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
                          "USD Price",
                          "\$153,16",
                          MyColors.white,
                        ),
                        _cardBottomWidget(
                          "Quantity",
                          "1",
                          MyColors.white,
                        ),
                        _cardBottomWidget(
                          "From",
                          "aleben92",
                          MyColors.primaryColor,
                        ),
                        _cardBottomWidget(
                          "To",
                          "Wavez47",
                          MyColors.primaryColor,
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
