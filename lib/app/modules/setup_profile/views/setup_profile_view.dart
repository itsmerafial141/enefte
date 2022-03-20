import 'package:enefte/app/values/colors.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:enefte/app/widgets/TopBarWidget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../values/constraint.dart';
import '../../connect_with_wallet/widgets/bottom_navigation_widget.dart';
import '../controllers/setup_profile_controller.dart';

class SetupProfileView extends GetView<SetupProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SingleChildScrollView(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 0,
                    child: Image(
                      image: AssetImage(
                        "assets/images/global/images/default_profile.png",
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
              ),
              SizedBox(
                height: 30,
              ),
              SPTextFieldWidget(
                label: "Username",
              ),
              SizedBox(
                height: 20,
              ),
              SPTextFieldWidget(
                label: "Email",
              ),
              SizedBox(
                height: 20,
              ),
              Container(
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
                        minLines: 1,
                        maxLines: 10,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
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
                    Get.offAllNamed(AppPages.INITIAL_WP);
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
      ),
    );
  }
}

class SPTextFieldWidget extends StatelessWidget {
  const SPTextFieldWidget({
    required this.label,
    this.controller,
  });
  final String label;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
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
              label,
              style: MyStyles.smallCaption,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 14,
            child: controller != null
                ? TextField(
                    controller: controller,
                    style: MyStyles.caption,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  )
                : TextField(
                    style: MyStyles.caption,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
