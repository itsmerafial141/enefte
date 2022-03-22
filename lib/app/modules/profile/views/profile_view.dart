import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: Center(
        child: Text(
          'ProfileView is working',
          style: MyStyles.heading2,
        ),
      ),
    );
  }
}
