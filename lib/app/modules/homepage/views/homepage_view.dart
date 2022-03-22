import 'package:enefte/app/values/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/homepage_controller.dart';
import '../widgets/hpbody_widget.dart';

class HomepageView extends GetView<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: HPBody(),
    );
  }
}
