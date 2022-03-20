import 'package:enefte/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/constraint.dart';
import '../../../values/styles.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MyConstraint.navigationButton,
      decoration: BoxDecoration(
        color: MyColors.secondaryColor,
      ),
      child: MaterialButton(
        height: MyConstraint.buttonHeight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: MyColors.primaryColor,
        onPressed: () {
          Get.offNamed(AppPages.INITIAL_SS);
        },
        child: Text(
          "Next",
          style: MyStyles.button,
        ),
      ),
    );
  }
}
