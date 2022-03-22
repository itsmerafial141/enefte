import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/constraint.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';
import '../../../widgets/TopBarWidget.dart';
import 'button_wallets_option_widget.dart';

class ConnectWithWalletBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: MyConstraint.globalPage,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TopBarWidget(
              onPressed: () {
                Get.back();
              },
              icon: Icons.arrow_back_ios,
              image: "assets/images/logo.png",
            ),
            Image(
              image: AssetImage(
                "assets/images/cww_image.png",
              ),
            ),
            Text(
              "Choose your wallet",
              style: MyStyles.heading1,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "By connecting your wallet you agree to\nour Terms of Service and Privacy Policy",
              style: MyStyles.bodyDisable,
            ),
            SizedBox(
              height: 30,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ButtonWalletOptions(
                  image: MyStrings.listOptionWalletIcon[index],
                  text: MyStrings.listOptionWalletTittle[index],
                  index: index,
                );
              },
              separatorBuilder: (_, __) {
                return SizedBox(
                  height: 10,
                );
              },
              itemCount: MyStrings.listOptionWalletTittle.length,
            ),
          ],
        ),
      ),
    );
  }
}
