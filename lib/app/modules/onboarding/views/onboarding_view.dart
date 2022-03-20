import 'package:enefte/app/values/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';
import '../widgets/body_widget.dart';
import '../widgets/bottom_navigation_widget.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: BodyWidget(),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
