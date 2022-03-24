import 'package:enefte/app/modules/search/controllers/search_controller.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';

class SRCSearchWidget extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SearchController());
    return Container(
      height: 56,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.secondaryColor,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image(
              image: AssetImage("assets/icons/Icon Search.png"),
              color: MyColors.grayLight,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 10,
            child: TextField(
              // controller: controller.searchController,
              onChanged: (value) {
                controller.searchCondition(value);
              },
              style: MyStyles.body,
              decoration: InputDecoration(
                hintText: "Search your NFT...",
                hintStyle: TextStyle(
                  fontFamily: "GilroyMedium",
                  color: MyColors.grayLight,
                  fontSize: 16,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
