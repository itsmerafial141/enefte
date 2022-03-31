import 'dart:math' as math;
import 'package:enefte/app/values/colors.dart';
import 'package:enefte/app/values/strings.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/collection_items_controller.dart';

class CollectionItemsView extends GetView<CollectionItemsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: Get.height * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/bg.jpg"),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: Get.height * 0.22,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                width: Get.width * 0.3,
                                height: Get.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Get.width),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      MyStrings.listCardImage[0],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: Get.width * 0.08,
                                height: Get.width * 0.08,
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: MyColors.dark,
                                  borderRadius:
                                      BorderRadius.circular(Get.width),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/icons/ic_round-verified.png",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          buttonDirectAndCopy(
                            context,
                            "Website",
                            "assets/icons/bx_world.png",
                            MyColors.white,
                            () {},
                          ),
                          buttonDirectAndCopy(
                            context,
                            "Instagram",
                            "assets/icons/ant-design_instagram-filled.png",
                            MyColors.white,
                            () {},
                          ),
                          buttonDirectAndCopy(
                            context,
                            "Tweeter",
                            "assets/icons/akar-icons_twitter-fill.png",
                            MyColors.white,
                            () {},
                          ),
                          buttonDirectAndCopy(
                            context,
                            "Discord",
                            "assets/icons/akar-icons_discord-fill.png",
                            MyColors.white,
                            () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Karafuru",
                        style: MyStyles.heading1,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Karafuru is home to 5,555 generative arts where colors reign supreme. Leave the drab reality and enter the world of Karafuru by Museum of Toys.",
                        style: MyStyles.caption,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: MyColors.secondaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
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
                                "${math.Random().nextInt(99)}K",
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
                                "${math.Random().nextInt(99)}K",
                                style: MyStyles.body,
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text(
                                "Floor Price",
                                style: MyStyles.caption,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        "assets/icons/logos_ethereum.png"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${math.Random().nextInt(9)},${math.Random().nextInt(9)}",
                                    style: MyStyles.body,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text(
                                "Volume Totals",
                                style: MyStyles.caption,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        "assets/icons/logos_ethereum.png"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${math.Random().nextInt(10)},${math.Random().nextInt(9)}K",
                                    style: MyStyles.body,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CLCNavigationTabWidget(),
                    controller.obx(
                      (index) => Container(
                        width: double.infinity,
                        child: controller.collectionTabsIndex.value == index
                            ? MyStrings.listCollectionScreen[index]
                            : MyStrings.listCollectionScreen[0],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: MediaQuery.of(context).viewPadding.top + 20,
            ),
            child: Row(
              children: [
                Tooltip(
                  message: "Back",
                  child: Container(
                    width: Get.width * 0.12,
                    height: Get.width * 0.12,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: MyColors.secondaryColor,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/Vector.png"),
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Get.back();
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Tooltip(
                  message: "Share",
                  child: Container(
                    width: Get.width * 0.12,
                    height: Get.width * 0.12,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: MyColors.secondaryColor,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage("assets/icons/Icon Share.png"),
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Get.back();
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonDirectAndCopy(
    BuildContext context,
    String message,
    String image,
    Color color,
    Function() onTap,
  ) {
    return Tooltip(
      message: message,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(
          MediaQuery.of(context).size.width,
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Image(
            color: color,
            image: AssetImage(
              image,
            ),
          ),
        ),
      ),
    );
  }
}

class CLCNavigationTabWidget extends GetView<CollectionItemsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: MyColors.secondaryColor,
      height: controller
              .textSize(MyStrings.listTabCollectionItems[0], MyStyles.body)
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                MyStrings.listTabCollectionItems.length,
                (index) {
                  return Obx(
                    () {
                      return InkWell(
                        onTap: () {
                          controller.changeTabIndexProfile(index);
                          print(controller.collectionTabsIndex.value);
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Text(
                                MyStrings.listTabCollectionItems[index],
                                style: TextStyle(
                                  fontFamily: "GilroyMedium",
                                  color: controller.collectionTabsIndex.value ==
                                          index
                                      ? MyColors.white
                                      : MyColors.grayLight,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                color: controller.collectionTabsIndex.value ==
                                        index
                                    ? MyColors.primaryColor
                                    : MyColors.secondaryColor,
                                height: 2,
                                width: controller
                                        .textSize(
                                          MyStrings
                                              .listTabCollectionItems[index],
                                          MyStyles.body,
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
          ),
        ],
      ),
    );
  }
}
