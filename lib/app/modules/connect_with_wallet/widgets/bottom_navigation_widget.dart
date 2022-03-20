import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../values/colors.dart';
import '../../../values/constraint.dart';
import '../../../values/styles.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MyConstraint.navigationButton,
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
          Get.toNamed(AppPages.INITIAL_SP);
        },
        child: Text(
          "Continue",
          style: MyStyles.button,
        ),
      ),
    );
  }
}
