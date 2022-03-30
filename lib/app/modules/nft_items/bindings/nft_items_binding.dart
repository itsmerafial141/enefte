import 'package:get/get.dart';

import '../controllers/nft_items_controller.dart';

class NftItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NftItemsController>(
      () => NftItemsController(),
    );
  }
}
