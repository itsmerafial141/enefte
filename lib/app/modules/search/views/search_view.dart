import 'package:enefte/app/values/colors.dart';
import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: Center(
        child: Text(
          'SearchView is working',
          style: MyStyles.heading2,
        ),
      ),
    );
  }
}
