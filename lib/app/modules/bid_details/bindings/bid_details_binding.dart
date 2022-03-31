import 'package:get/get.dart';

import '../controllers/bid_details_controller.dart';

class BidDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BidDetailsController>(
      () => BidDetailsController(),
    );
  }
}
