import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../controllers/stats_controller.dart';
import '../screen/src_activity_screen.dart';
import '../screen/src_ranking_screen.dart';
import '../widgets/sts_navigation_widget.dart';

class StatsView extends GetView<StatsController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(StatsController());
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  "Stats",
                  style: MyStyles.heading1,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              STSNavigationTabs(),
              Obx(
                () {
                  return Container(
                    margin: EdgeInsets.all(20),
                    child: controller.statsTabsIndex.value == 0
                        ? SRCRankingsScreen()
                        : controller.statsTabsIndex.value == 1
                            ? SRCActivityScreen()
                            : SRCRankingsScreen(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
