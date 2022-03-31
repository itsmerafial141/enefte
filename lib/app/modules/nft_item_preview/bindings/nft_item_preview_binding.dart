import 'package:get/get.dart';

import '../controllers/nft_item_preview_controller.dart';

class NftItemPreviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NftItemPreviewController>(
      () => NftItemPreviewController(),
    );
  }
}
