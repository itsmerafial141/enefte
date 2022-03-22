import 'package:enefte/app/modules/homepage/views/homepage_view.dart';
import 'package:enefte/app/modules/profile/views/profile_view.dart';
import 'package:enefte/app/modules/search/views/search_view.dart';
import 'package:enefte/app/modules/stats/views/stats_view.dart';
import 'package:enefte/app/values/colors.dart';
import 'package:enefte/app/values/strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navigasi_controller.dart';

class NavigasiView extends GetView<NavigasiController> {
  @override
  Widget build(BuildContext context) {
    var listNavigasiTab = List.generate(
      MyStrings.listNavigasiImage.length,
      (index) {
        return Obx(
          () => Expanded(
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              height: MediaQuery.of(context).size.height * 0.1,
              onPressed: () {
                controller.tabIndex.value = index;
              },
              child: Image(
                color: controller.tabIndex.value == index
                    ? MyColors.primaryColor
                    : MyColors.grayLight,
                image: AssetImage(
                  MyStrings.listNavigasiImage[index],
                ),
              ),
            ),
          ),
        );
      },
    );
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.tabIndex.value,
          children: [
            HomepageView(),
            SearchView(),
            StatsView(),
            ProfileView(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        color: MyColors.secondaryColor,
        child: Row(
          children: listNavigasiTab,
        ),
      ),

      // BottomNavigationBar(
      //   backgroundColor: MyColors.secondaryColor,
      //   unselectedItemColor: MyColors.grayLight,
      //   selectedItemColor: MyColors.primaryColor,
      //   currentIndex: controller.tabIndex.value,
      //   onTap: controller.changeTabIndex,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   selectedIconTheme: IconThemeData(color: MyColors.grayLight),
      //   items: listNavigasiTab,
      // ),
    );
  }
}
