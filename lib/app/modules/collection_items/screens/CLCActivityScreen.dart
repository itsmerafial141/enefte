// ignore_for_file: file_names

import 'dart:math' as math;
import 'package:enefte/app/values/colors.dart';
import 'package:enefte/app/values/strings.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

class CLCActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Crypto User",
                              style: MyStyles.caption,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Crypto User",
                              style: MyStyles.body,
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Transfer",
                              style: TextStyle(
                                fontFamily: "GilroyLight",
                                color: MyColors.success,
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${math.Random().nextInt(24)} hours ago",
                              style: MyStyles.smallCaption,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Quantity",
                                style: MyStyles.smallCaption,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${math.Random().nextInt(99)}",
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
                                "UnderCoverColle...",
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
                                "To",
                                style: MyStyles.smallCaption,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "You",
                                style: TextStyle(
                                  fontFamily: "GilroyRegular",
                                  color: MyColors.primaryColor,
                                  fontSize: 12,
                                ),
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
        ],
      ),
    );
  }
}
