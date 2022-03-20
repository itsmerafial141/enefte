import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL_OB,
      getPages: AppPages.routes,
      theme: ThemeData(
        fontFamily: "GilroyRegular",
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
