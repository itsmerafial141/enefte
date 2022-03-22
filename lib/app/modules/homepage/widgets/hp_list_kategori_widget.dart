import 'package:enefte/app/modules/homepage/controllers/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import '../../../values/styles.dart';

class HPListKategoriWidget extends GetView<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Row(
            children: listKategori(),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }

  List<Widget> listKategori() {
    var controller = Get.put(HomepageController());
    return List<Widget>.generate(
      MyStrings.listKategoriHomePage.length,
      (index) {
        return Obx(
          () {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: MaterialButton(
                padding: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: controller.kategoriClicked.value == index
                    ? MyColors.primaryColor
                    : MyColors.secondaryColor,
                onPressed: () {
                  controller.kategoriClicked.value = index;
                },
                child: Text(
                  MyStrings.listKategoriHomePage[index],
                  style: MyStyles.button,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
