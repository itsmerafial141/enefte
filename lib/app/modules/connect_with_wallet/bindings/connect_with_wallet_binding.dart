import 'package:get/get.dart';

import '../controllers/connect_with_wallet_controller.dart';

class ConnectWithWalletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConnectWithWalletController>(
      () => ConnectWithWalletController(),
    );
  }
}
