import 'package:enefte/app/values/colors.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_page_controller.dart';

class WelcomePageView extends GetView<WelcomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/wp_image.png"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Hey! Welcome",
              style: MyStyles.heading1,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Create and Sell your NFT in 1 seconds",
              style: MyStyles.body,
            ),
          ],
        ),
      ),
    );
  }
}
