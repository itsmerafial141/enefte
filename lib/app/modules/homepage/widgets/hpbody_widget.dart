import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';
import '../controllers/homepage_controller.dart';
import 'header_body_widget.dart';
import 'hp_list_card_widget.dart';
import 'hp_list_kategori_widget.dart';

class HPBody extends GetView<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).viewPadding.top + 20,
          bottom: 20,
        ),
        child: Column(
          children: [
            HeaderBody(),
            SizedBox(
              height: 20,
            ),
            HPListKategoriWidget(),
            SizedBox(
              height: 20,
            ),
            HPListCardWidget(),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Text(
                "Trending Collections",
                style: MyStyles.heading2,
              ),
            ),
            HPListTrandingWidget(),
          ],
        ),
      ),
    );
  }
}

class HPListTrandingWidget extends GetView<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (_, __) {
          return Row(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 66,
                    width: 66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
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
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: MyColors.white,
                    ),
                    child: Text(
                      math.Random().nextInt(100).toString(),
                      style: MyStyles.smallCaption,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)].toUpperCase()}"
                    "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                    "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)]}"
                    "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                    "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)]}"
                    " ${MyStrings.hurufKonsonan[math.Random().nextInt(MyStrings.hurufKonsonan.length)].toUpperCase()}"
                    "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                    "${MyStrings.hurufKonsonan[math.Random().nextInt(MyStrings.hurufKonsonan.length)]}"
                    "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}",
                    style: MyStyles.body,
                  ),
                  SizedBox(
                    height: 5,
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
                    style: MyStyles.caption,
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage("assets/icons/logos_ethereum.png"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${math.Random().nextInt(10)},${math.Random().nextInt(999)}",
                        style: MyStyles.button,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "+${math.Random().nextInt(99)},${math.Random().nextInt(99)}%",
                    style: TextStyle(
                      fontFamily: "GilroyRegular",
                      color: MyColors.success,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
        separatorBuilder: (_, __) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 10,
      ),
    );
  }
}
