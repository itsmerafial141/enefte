import 'package:enefte/app/values/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/start_screen_controller.dart';
import '../widgets/body_start_screen_widget.dart';
import '../widgets/bottom_navigation_bar_start_screen.dart';

class StartScreenView extends GetView<StartScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: BodyStartScreenWidget(),
      bottomNavigationBar: BottomNavigationarStartScreenWidget(),
    );
  }
}