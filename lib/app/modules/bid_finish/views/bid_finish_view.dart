import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bid_finish_controller.dart';

class BidFinishView extends GetView<BidFinishController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BidFinishView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BidFinishView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
