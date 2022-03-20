import 'package:enefte/app/values/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../connect_with_wallet/widgets/bottom_navigation_widget.dart';
import '../controllers/connect_with_wallet_controller.dart';
import '../widgets/cww_body_widget.dart';

class ConnectWithWalletView extends GetView<ConnectWithWalletController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      body: ConnectWithWalletBodyWidget(),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
