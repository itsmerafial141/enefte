// ignore_for_file: file_names

import 'dart:math' as math;
import 'package:enefte/app/routes/app_pages.dart';
import 'package:enefte/app/values/colors.dart';
import 'package:enefte/app/values/strings.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../widgets/PRFFilterWidget.dart';

class PRFCollectedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          PRFFilterTabWidget(
            text: "All Categories",
            message: "Categories",
            onPressed: () {},
          ),
          SizedBox(
            height: 20,
          ),
          StaggeredGrid.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: List.generate(
              10,
              (index) {
                return Tooltip(
                  message: "NFT Items",
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(AppPages.INITIAL_NI);
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: MyColors.secondaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
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
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "The Invitation",
                                style: MyStyles.smallCaption,
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Image(
                                    height: 20,
                                    width: 20,
                                    color: MyColors.white,
                                    image: AssetImage(
                                        "assets/icons/Icon Like.png"),
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
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Invitation-My Story",
                            style: MyStyles.caption,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width,
                              ),
                              border: Border.all(
                                width: 1,
                                color: MyColors.primaryColor,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image(
                                  height: 15,
                                  width: 15,
                                  image: AssetImage(
                                      "assets/icons/logos_ethereum.png"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "0.${math.Random().nextInt(99)} ETH",
                                  style: MyStyles.caption,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
