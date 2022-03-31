import 'package:enefte/app/routes/app_pages.dart';
import 'package:enefte/app/values/colors.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/constraint.dart';
import '../controllers/bid_finish_controller.dart';

class BidFinishView extends GetView<BidFinishController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: Container(
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/images/nft_hand.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Bid Placed",
                      style: MyStyles.heading1,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Your order was placed successfully For more details, check Offers Status in tab offers made.",
                      style: MyStyles.body,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
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
                  Get.offAllNamed(AppPages.INITIAL_HP);
                },
                child: Text(
                  "Submit",
                  style: MyStyles.button,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
