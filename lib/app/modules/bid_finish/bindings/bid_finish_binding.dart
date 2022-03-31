import 'package:get/get.dart';

import '../controllers/bid_finish_controller.dart';

class BidFinishBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BidFinishController>(
      () => BidFinishController(),
    );
  }
}
