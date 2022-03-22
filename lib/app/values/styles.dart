import 'package:enefte/app/values/colors.dart';
import 'package:flutter/material.dart';

class MyStyles {
  static TextStyle heading1 = TextStyle(
    fontFamily: "GilroyBold",
    fontSize: 34,
    color: MyColors.white,
  );
  static TextStyle heading2 = TextStyle(
    fontFamily: "GilroyBold",
    color: MyColors.white,
    fontSize: 24,
  );
  static TextStyle body = TextStyle(
    fontFamily: "GilroyMedium",
    color: MyColors.white,
    fontSize: 16,
  );
  static TextStyle bodyDisable = TextStyle(
    fontFamily: "GilroyMedium",
    color: MyColors.grayLight,
    fontSize: 16,
  );
  static TextStyle button = TextStyle(
    fontFamily: "GilroyBold",
    fontSize: 14,
    color: MyColors.white,
  );
  static TextStyle caption = TextStyle(
    fontFamily: "GilroyRegular",
    color: MyColors.grayLight,
    fontSize: 12,
  );
  static TextStyle smallCaption = TextStyle(
    fontFamily: "GilroyLight",
    color: MyColors.grayLight,
    fontSize: 10,
  );
}
