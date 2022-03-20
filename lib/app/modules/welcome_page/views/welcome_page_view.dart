import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_page_controller.dart';

class WelcomePageView extends GetView<WelcomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WelcomePageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WelcomePageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
