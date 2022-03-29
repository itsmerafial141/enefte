import 'dart:math' as math;

import 'package:enefte/app/values/strings.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../values/colors.dart';

class SRCListFeaturedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: StaggeredGrid.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(
          4,
          (index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
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
                        height: MediaQuery.of(context).size.height * 0.15,
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
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.08,
                        ),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.width * 0.12,
                              width: MediaQuery.of(context).size.width * 0.12,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.width,
                                ),
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
                              height: MediaQuery.of(context).size.width * 0.04,
                              width: MediaQuery.of(context).size.width * 0.04,
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
                          height: 5,
                        ),
                        Text(
                          math.Random().nextInt(2) == 1
                              ? "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)].toUpperCase()}"
                                  "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                                  "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)]}"
                                  "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                                  "${MyStrings.huruf1[math.Random().nextInt(MyStrings.huruf1.length)]}"
                                  " ${MyStrings.hurufKonsonan[math.Random().nextInt(MyStrings.hurufKonsonan.length)].toUpperCase()}"
                                  "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                                  "${MyStrings.hurufKonsonan[math.Random().nextInt(MyStrings.hurufKonsonan.length)]}"
                                  "${MyStrings.hurufVokal[math.Random().nextInt(MyStrings.hurufVokal.length)]}"
                              : "-",
                          style: TextStyle(
                            fontFamily: "GilroyRegular",
                            color: MyColors.primaryColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
