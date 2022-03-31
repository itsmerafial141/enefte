import 'dart:math' as math;

import 'package:enefte/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';

class SRCListCollectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(
          10,
          (index) {
            return Tooltip(
              message: "Collections",
              child: InkWell(
                onTap: () {
                  Get.toNamed(AppPages.INITIAL_CI);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              color: Color.fromRGBO(
                                math.Random().nextInt(255),
                                math.Random().nextInt(255),
                                math.Random().nextInt(255),
                                1,
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.17,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: MyColors.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.12,
                                  width:
                                      MediaQuery.of(context).size.width * 0.12,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width,
                                    ),
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
                                  height:
                                      MediaQuery.of(context).size.width * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.04,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: MyColors.secondaryColor,
                                    borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width,
                                    ),
                                  ),
                                  child: Image(
                                    image: AssetImage(
                                      "assets/icons/ic_round-verified.png",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
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
                              style: MyStyles.caption,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
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
                                      "${math.Random().nextInt(9)},${math.Random().nextInt(99)}K",
                                      style: MyStyles.body,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
