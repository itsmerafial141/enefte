import 'dart:math' as math;
import 'package:enefte/app/values/strings.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../controllers/profile_controller.dart';
import '../widgets/PRFNavigationTabs.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    return Scaffold(
      backgroundColor: MyColors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/banner-photo.png"),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: MediaQuery.of(context).viewPadding.top + 10,
                      bottom: 20,
                    ),
                    child: Row(
                      children: [
                        navigationButtonTop(
                          context,
                          () {},
                          "Back",
                          "assets/icons/Vector.png",
                        ),
                        Spacer(),
                        navigationButtonTop(
                          context,
                          () {},
                          "Share",
                          "assets/icons/Icon Share.png",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                  ),
                  profileContainerWidget(context),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "kevin",
                      style: MyStyles.heading1,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  PRFShareContainerWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Sell anything",
                      style: MyStyles.caption,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "${math.Random().nextInt(100)}",
                          style: MyStyles.body,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Items Total",
                          style: MyStyles.caption,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "${math.Random().nextInt(9)},${math.Random().nextInt(9)}K",
                          style: MyStyles.body,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Views",
                          style: MyStyles.caption,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "${math.Random().nextInt(9)},${math.Random().nextInt(9)}K",
                          style: MyStyles.body,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Liked",
                          style: MyStyles.caption,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  PRFNavigationTabs(),
                  controller.obx(
                    (index) => Container(
                      width: double.infinity,
                      child: controller.profileTabsIndex.value == index
                          ? MyStrings.listProfileScreen[index]
                          : MyStrings.listProfileScreen[0],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileContainerWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/nft1.png"),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.07,
                height: MediaQuery.of(context).size.width * 0.07,
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: MyColors.dark,
                  borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width,
                  ),
                  image: DecorationImage(
                    scale: 1.2,
                    image: AssetImage(
                      "assets/icons/ic_round-verified.png",
                    ),
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          Tooltip(
            message: "Edit Profile",
            child: MaterialButton(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  width: 1,
                  color: MyColors.white,
                ),
              ),
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: MyStyles.button,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget navigationButtonTop(
    BuildContext context,
    Function() onPressed,
    String message,
    String image,
  ) {
    return Tooltip(
      message: message,
      child: Container(
        height: MediaQuery.of(context).size.width * 0.1,
        width: MediaQuery.of(context).size.width * 0.1,
        decoration: BoxDecoration(
          color: MyColors.secondaryColor,
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
        child: MaterialButton(
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}

class PRFShareContainerWidget extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          buttonDirectAndCopy(
            context,
            "Copy",
            "assets/icons/fluent_copy-20-filled.png",
            MyColors.primaryColor,
            () {},
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "0x841a...8a57",
            style: MyStyles.caption,
          ),
          Spacer(),
          buttonDirectAndCopy(
            context,
            "Website",
            "assets/icons/bx_world.png",
            MyColors.white,
            () {},
          ),
          SizedBox(
            width: 5,
          ),
          buttonDirectAndCopy(
            context,
            "Instagram",
            "assets/icons/ant-design_instagram-filled.png",
            MyColors.white,
            () {},
          ),
          SizedBox(
            width: 5,
          ),
          buttonDirectAndCopy(
            context,
            "Tweeter",
            "assets/icons/akar-icons_twitter-fill.png",
            MyColors.white,
            () {},
          ),
        ],
      ),
    );
  }

  Widget buttonDirectAndCopy(
    BuildContext context,
    String message,
    String image,
    Color color,
    Function() onTap,
  ) {
    return Tooltip(
      message: message,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(
          MediaQuery.of(context).size.width,
        ),
        child: Container(
          padding: EdgeInsets.all(5),
          child: Image(
            color: color,
            image: AssetImage(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
