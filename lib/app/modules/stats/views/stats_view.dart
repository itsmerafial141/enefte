import 'dart:math' as math;
import 'package:enefte/app/values/strings.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../controllers/stats_controller.dart';

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
              Obx(() {
                return Container(
                  margin: EdgeInsets.all(20),
                  child: controller.statsTabsIndex.value == 0
                      ? SRCRankingsScreen()
                      : controller.statsTabsIndex.value == 1
                          ? SRCActivityScreen()
                          : SRCRankingsScreen(),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class SRCActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Tooltip(
                message: "All Event Type",
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: _filterStats("All Event Type"),
                ),
              ),
            ),
            // Spacer(),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 3,
              child: Tooltip(
                message: "All Chains",
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: _filterStats("All Chains"),
                ),
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
        horizontal: 20,
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

class SRCRankingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Tooltip(
                message: "All Categories",
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: _filterStats("All Categories"),
                ),
              ),
            ),
            // Spacer(),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 3,
              child: Tooltip(
                message: "All Chains",
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: _filterStats("All Chains"),
                ),
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
        horizontal: 20,
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
