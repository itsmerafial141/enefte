import 'package:enefte/app/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // // SystemChrome.setSystemUIOverlayStyle(
  // //   SystemUiOverlayStyle(
  // //     statusBarColor: Colors.transparent, // transparent status bar
  // //   ),
  // // );
  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle.light,
  // );
  runApp(
    AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //set as per your  status bar color
        systemNavigationBarColor:
            MyColors.dark, //set as per your navigation bar color
        statusBarIconBrightness:
            Brightness.dark, //set as per your status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL_OB,
        getPages: AppPages.routes,
        theme: ThemeData(
          fontFamily: "GilroyRegular",
        ),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
