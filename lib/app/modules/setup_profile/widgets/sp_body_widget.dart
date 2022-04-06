import 'package:enefte/app/modules/setup_profile/controllers/setup_profile_controller.dart';
import 'package:enefte/app/modules/setup_profile/widgets/sp_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../values/colors.dart';
import '../../../values/constraint.dart';
import '../../../values/styles.dart';
import '../../../widgets/TopBarWidget.dart';

class SPBodyWidget extends GetView<SetupProfileController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: MyConstraint.navigationButton,
        decoration: BoxDecoration(
          color: MyColors.dark,
        ),
        width: double.infinity,
        child: Column(
          children: [
            TopBarWidget(
              icon: Icons.arrow_back_ios,
              onPressed: () {
                Get.back();
              },
              tittle: "Setup Profile",
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              child: Text(
                "Upload Photo Profile",
                style: MyStyles.body,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            photoProfile(),
            SizedBox(
              height: 30,
            ),
            SPTextFieldWidget(
              label: "Username",
              controller: controller.usernameController,
            ),
            SizedBox(
              height: 20,
            ),
            SPTextFieldWidget(
              label: "Email",
              controller: controller.emailController,
            ),
            SizedBox(
              height: 20,
            ),
            bioTextFIeld(),
            SizedBox(
              height: 40,
            ),
            buttonSubmit(),
          ],
        ),
      ),
    );
  }

  Container buttonSubmit() {
    return Container(
      width: double.infinity,
      // padding: MyConstraint.navigationButton,
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
          // Get.offAllNamed(AppPages.INITIAL_NV);
          controller.addUsersToFirestore();
        },
        child: Text(
          "Submit",
          style: MyStyles.button,
        ),
      ),
    );
  }

  Container bioTextFIeld() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: MyColors.secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              "Bio",
              style: MyStyles.smallCaption,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 109,
            child: TextField(
              style: MyStyles.caption,
              controller: controller.bioController,
              minLines: 1,
              maxLines: 10,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row photoProfile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 0,
          child: Image(
            image: AssetImage(
              "assets/images/default_profile.png",
            ),
          ),
        ),
        SizedBox(
          width: 20,
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
            child: Text(
              "Upload Profile",
              style: MyStyles.button,
            ),
          ),
        ),
      ],
    );
  }
}
