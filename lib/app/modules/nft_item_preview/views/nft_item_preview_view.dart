import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../controllers/nft_item_preview_controller.dart';

class NftItemPreviewView extends GetView<NftItemPreviewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: Stack(
        // alignment: Alignment.center,
        children: [
          Container(
            // alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            child: Image(
              fit: BoxFit.fitWidth,
              image: AssetImage(
                MyStrings.listCardImage[1],
              ),
            ),
          ),
          Tooltip(
            message: "Back",
            child: Container(
              width: Get.width * 0.12,
              height: Get.width * 0.12,
              margin: EdgeInsets.only(
                top: 10 + MediaQuery.of(context).viewPadding.top,
                left: 10,
              ),
              decoration: BoxDecoration(
                color: MyColors.secondaryColor,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage("assets/icons/Vector.png"),
                ),
              ),
              child: MaterialButton(
                onPressed: () {
                  Get.back();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
