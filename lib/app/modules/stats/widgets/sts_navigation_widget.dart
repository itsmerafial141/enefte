import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';
import '../controllers/stats_controller.dart';

class STSNavigationTabs extends GetView<StatsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: MyColors.secondaryColor,
      height: controller
              .textSize(MyStrings.listTabStatsView[0], MyStyles.heading2)
              .height +
          2 +
          5,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 2),
            width: double.infinity,
            decoration: BoxDecoration(
              color: MyColors.dark,
              border: Border.all(
                width: 1,
                color: MyColors.dark,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              MyStrings.listTabStatsView.length,
              (index) {
                return Obx(
                  () {
                    return InkWell(
                      onTap: () {
                        controller.statsTabsIndex.value = index;
                        print(controller.statsTabsIndex.value);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Text(
                              MyStrings.listTabStatsView[index],
                              style: TextStyle(
                                fontFamily: "GilroyBold",
                                color: controller.statsTabsIndex.value == index
                                    ? MyColors.white
                                    : MyColors.grayLight,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              color: controller.statsTabsIndex.value == index
                                  ? MyColors.primaryColor
                                  : MyColors.secondaryColor,
                              height: 2,
                              width: controller
                                      .textSize(
                                        MyStrings.listTabStatsView[index],
                                        MyStyles.heading2,
                                      )
                                      .width +
                                  20,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
