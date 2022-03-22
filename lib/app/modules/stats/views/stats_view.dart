import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../controllers/stats_controller.dart';

class StatsView extends GetView<StatsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: Center(
        child: Text(
          'StatsView is working',
          style: MyStyles.heading2,
        ),
      ),
    );
  }
}
