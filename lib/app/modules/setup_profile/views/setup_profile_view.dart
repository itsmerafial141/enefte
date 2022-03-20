import 'package:enefte/app/values/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/setup_profile_controller.dart';
import '../widgets/sp_body_widget.dart';

class SetupProfileView extends GetView<SetupProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: SPBodyWidget(),
    );
  }
}
