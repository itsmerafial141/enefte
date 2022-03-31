import 'dart:math' as math;
import 'package:enefte/app/values/colors.dart';
import 'package:enefte/app/values/strings.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../values/constraint.dart';
import '../../../widgets/TopBarWidget.dart';
import '../controllers/bid_details_controller.dart';

class BidDetailsView extends GetView<BidDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBarWidget(
              icon: Icons.arrow_back_ios,
              onPressed: () {
                Get.back();
              },
              tittle: "Bid Details",
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: Get.width * 0.3,
                    height: Get.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
                  Container(
                    width: Get.width * 0.55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mosu #${math.Random().nextInt(9999)}",
                          style: MyStyles.heading2,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Karafuru is home to 5,555 generative arts where colors reign supreme. Leave the drab reality and enter the world of Karafuru by Museum of Toys.",
                          style: MyStyles.smallCaption,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        MyStrings.listCardImage[
                                            math.Random().nextInt(
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
                                    height: 7,
                                    width: 7,
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
                              "Karafuru",
                              style: MyStyles.smallCaption,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: MyColors.secondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Tooltip(
                    message: "Decrement",
                    child: Container(
                      height: Get.width * 0.07,
                      width: Get.width * 0.07,
                      decoration: BoxDecoration(
                          // color: MyColors.grayLight,
                          borderRadius: BorderRadius.circular(Get.width),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/icons/decr.png"),
                          )),
                      child: MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Get.width),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image(
                    image: AssetImage("assets/icons/logos_ethereum.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "2,75",
                    style: MyStyles.heading2,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Tooltip(
                    message: "Decrement",
                    child: Container(
                      height: Get.width * 0.07,
                      width: Get.width * 0.07,
                      decoration: BoxDecoration(
                          // color: MyColors.grayLight,
                          borderRadius: BorderRadius.circular(Get.width),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/icons/inc.png"),
                          )),
                      child: MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Get.width),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You must bid at least ",
                    style: MyStyles.caption,
                  ),
                  Text(
                    "2,75 ETH",
                    style: TextStyle(
                      fontFamily: "GilroyRegular",
                      color: MyColors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Text(
                "Set expiration date and time",
                style: MyStyles.caption,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: Get.height * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColors.secondaryColor,
                    ),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Date",
                              style: MyStyles.body,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: MyColors.grayLight,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: Get.height * 0.08,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColors.secondaryColor,
                      ),
                      child: Text(
                        "Time",
                        style: MyStyles.body,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: MyColors.dark,
              ),
              child: MaterialButton(
                height: MyConstraint.buttonHeight,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: MyColors.primaryColor,
                onPressed: () {
                  Get.toNamed(AppPages.INITIAL_BF);
                },
                child: Text(
                  "Submit",
                  style: MyStyles.button,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Text(
                "Bid History",
                style: MyStyles.heading2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
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
                                        MyStrings.listCardImage[
                                            math.Random().nextInt(
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
                                  "${math.Random().nextInt(60)} Minutes ago",
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
                              "\$${math.Random().nextInt(9)},${math.Random().nextInt(9999)}.${math.Random().nextInt(99)}",
                              MyColors.white,
                            ),
                            Spacer(),
                            _cardBottomWidget(
                              "Floor Diff",
                              "${math.Random().nextInt(99)}% below",
                              MyColors.white,
                            ),
                            Spacer(),
                            _cardBottomWidget(
                              "Expiration",
                              "${math.Random().nextInt(12)} Months",
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
        ),
      ),
    );
  }

  Widget _cardBottomWidget(String tittle, String text, Color color) {
    return Column(
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
    );
  }
}
