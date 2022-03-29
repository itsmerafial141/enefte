import 'package:enefte/app/modules/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';

class PRFNavigationTabs extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    return Container(
      width: double.infinity,
      color: MyColors.secondaryColor,
      height: controller
              .textSize(MyStrings.listTabProfileView[0], MyStyles.body)
              .height +
          2 +
          5,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 2),
            width: double.infinity,
            decoration: BoxDecoration(
              color: MyColors.black,
              border: Border.all(
                width: 1,
                color: MyColors.black,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                MyStrings.listTabProfileView.length,
                (index) {
                  return Obx(
                    () {
                      return InkWell(
                        onTap: () {
                          controller.changeTabIndexProfile(index);
                          print(controller.profileTabsIndex.value);
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Text(
                                MyStrings.listTabProfileView[index],
                                style: TextStyle(
                                  fontFamily: "GilroyMedium",
                                  color:
                                      controller.profileTabsIndex.value == index
                                          ? MyColors.white
                                          : MyColors.grayLight,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                color:
                                    controller.profileTabsIndex.value == index
                                        ? MyColors.primaryColor
                                        : MyColors.secondaryColor,
                                height: 2,
                                width: controller
                                        .textSize(
                                          MyStrings.listTabProfileView[index],
                                          MyStyles.body,
                                        )
                                        .width +
                                    20,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
