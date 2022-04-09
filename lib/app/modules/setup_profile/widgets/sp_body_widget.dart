import 'package:enefte/app/modules/setup_profile/controllers/setup_profile_controller.dart';
import 'package:enefte/app/modules/setup_profile/widgets/sp_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            inputBody(),
            controller.obx(
              (state) {
                return buttonSubmit(
                  Text(
                    "Submit",
                    style: MyStyles.button,
                  ),
                );
              },
              onLoading: buttonSubmit(
                CircularProgressIndicator(
                  color: MyColors.white,
                ),
              ),
            )
          ],
        ),

        // controller.obx(
        //   (value) => Column(
        //     children: [
        //       TopBarWidget(
        //         icon: Icons.arrow_back_ios,
        //         onPressed: () {
        //           Get.back();
        //         },
        //         tittle: "Setup Profile",
        //       ),
        //       inputBody(),
        //       buttonSubmit(
        //         Text(
        //           "Submit",
        //           style: MyStyles.button,
        //         ),
        //       ),
        //     ],
        //   ),
        //   onLoading: Column(
        //     children: [
        //       inputBody(),
        //       buttonSubmit(
        //         CircularProgressIndicator(
        //           color: MyColors.white,
        //         ),
        //       ),
        //     ],
        //   ),
        //   onEmpty: Column(
        //     children: [
        //       TopBarWidget(
        //         icon: Icons.arrow_back_ios,
        //         onPressed: () {
        //           Get.back();
        //         },
        //         tittle: "Setup Profile",
        //       ),
        //       errorContainer("!nput cannot be empty!"),
        //       inputBody(),
        //       buttonSubmit(
        //         Text(
        //           "Submit",
        //           style: MyStyles.button,
        //         ),
        //       ),
        //     ],
        //   ),
        //   onError: (value) {
        //     return Column(
        //       children: [
        //         TopBarWidget(
        //           icon: Icons.arrow_back_ios,
        //           onPressed: () {
        //             Get.back();
        //           },
        //           tittle: "Setup Profile",
        //         ),
        //         errorContainer(value!),
        //         inputBody(),
        //         buttonSubmit(
        //           Text(
        //             "Submit",
        //             style: MyStyles.button,
        //           ),
        //         ),
        //       ],
        //     );
        //   },
        // ),
      ),
    );
  }

  Widget errorContainer(String text) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Color.fromRGBO(235, 201, 199, 0.9),
        border: Border.all(
          width: 1,
          color: MyColors.danger,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "GilroyBold",
          color: MyColors.danger,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget inputBody() {
    return Column(
      children: [
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
        controller.obx(
          (state) {
            return Container(
              child: state!.contains("100") || state.contains("1100")
                  ? Column(
                      children: [
                        errorContainer("Input cannot be empty!"),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  : null,
            );
          },
        ),
        SPTextFieldWidget(
          label: "Username",
          controller: controller.usernameController,
        ),
        SizedBox(
          height: 20,
        ),
        controller.obx(
          (state) {
            return Container(
              child: state!.contains("212")
                  ? Column(
                      children: [
                        errorContainer("Email isn't valid! example : example@email.com"),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  : state.contains("100") || state.contains("1200")
                      ? Column(
                          children: [
                            errorContainer("Input cannot be empty!"),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        )
                      : null,
            );
          },
        ),
        SPTextFieldWidget(
          label: "Email",
          controller: controller.emailController,
        ),
        SizedBox(
          height: 20,
        ),
        controller.obx(
          (state) {
            return Container(
              child: state!.contains("100") || state.contains("1300")
                  ? Column(
                      children: [
                        errorContainer("Input cannot be empty!"),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  : null,
            );
          },
        ),
        bioTextFIeld(),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }

  Widget buttonSubmit(Widget child) {
    return Container(
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
          controller.addUsersToFirestore();
        },
        child: child,
      ),
    );
  }

  Widget bioTextFIeld() {
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

  Widget photoProfile() {
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
