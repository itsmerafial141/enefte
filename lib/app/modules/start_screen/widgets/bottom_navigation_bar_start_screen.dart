import 'package:enefte/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/constraint.dart';
import '../../../values/styles.dart';

class BottomNavigationarStartScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MyConstraint.navigationButton,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: MaterialButton(
              height: MyConstraint.buttonHeight,
              onPressed: () {
                Get.toNamed(AppPages.INITIAL_CWW);
              },
              color: MyColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Connect with Wallet",
                style: MyStyles.button,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: MaterialButton(
              height: MyConstraint.buttonHeight,
              onPressed: () {},
              color: MyColors.dark,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: MyColors.white,
                  width: 1,
                ),
              ),
              child: Image(
                image: AssetImage("assets/icons/arrow_down.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
