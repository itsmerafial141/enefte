import 'dart:math' as math;
import 'package:enefte/app/modules/homepage/controllers/homepage_controller.dart';
import 'package:enefte/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';

class HPListCardWidget extends GetView<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Row(
            children: List.generate(
              MyStrings.listKategoriHomePage.length,
              (index) {
                return Tooltip(
                  message: "NFT Items",
                  child: Container(
                    width: 267,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColors.secondaryColor,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Get.toNamed(AppPages.INITIAL_NI);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Container(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image(
                                  image: AssetImage(
                                    MyStrings
                                        .listCardImage[math.Random().nextInt(
                                      MyStrings.listCardImage.length,
                                    )],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 5,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color.fromRGBO(0, 0, 0, 0.3),
                                        ),
                                        child: Text(
                                          MyStrings.listKategoriHomePage[
                                              math.Random().nextInt(
                                            MyStrings
                                                .listKategoriHomePage.length,
                                          )],
                                          style: MyStyles.caption,
                                        ),
                                      ),
                                      Spacer(),
                                      Obx(
                                        () {
                                          return InkWell(
                                            onTap: () {
                                              controller.favoriteToggle(index);
                                            },
                                            child: Image(
                                              image: controller.favoriteClicked[
                                                          index] ==
                                                      true
                                                  ? AssetImage(
                                                      "assets/icons/Icon Like filled.png",
                                                    )
                                                  : AssetImage(
                                                      "assets/icons/Icon Like.png"),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)].toUpperCase()}"
                                  "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                                  "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)]}"
                                  "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                                  "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)]}"
                                  "_${MyStrings.hurufKonsonan[math.Random().nextInt(MyStrings.hurufKonsonan.length)].toUpperCase()}"
                                  "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                                  "${MyStrings.hurufKonsonan[math.Random().nextInt(MyStrings.hurufKonsonan.length)]}"
                                  "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                                  "#${math.Random().nextInt(9999)}",
                                  style: MyStyles.body,
                                ),
                                Spacer(),
                                Image(
                                  image:
                                      AssetImage("assets/icons/Icon Time.png"),
                                  color: MyColors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "${math.Random().nextInt(999)}d Left",
                                  style: MyStyles.caption,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            MyStrings.listCardImage[
                                                math.Random().nextInt(MyStrings
                                                    .listCardImage.length)],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: Image(
                                        height: 10,
                                        width: 10,
                                        image: AssetImage(
                                            "assets/icons/ic_round-verified.png"),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)].toUpperCase()}"
                                  "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                                  "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)]}"
                                  "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                                  "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)]}"
                                  "_${MyStrings.hurufKonsonan[math.Random().nextInt(MyStrings.hurufKonsonan.length)].toUpperCase()}"
                                  "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                                  "${MyStrings.hurufKonsonan[math.Random().nextInt(MyStrings.hurufKonsonan.length)]}"
                                  "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}",
                                  style: MyStyles.smallCaption,
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 1,
                                      color: MyColors.primaryColor,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            "assets/icons/logos_ethereum.png"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "${math.Random().nextInt(10)},${math.Random().nextInt(99)} ETH",
                                        style: MyStyles.caption,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
