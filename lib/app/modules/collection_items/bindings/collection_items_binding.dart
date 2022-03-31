import 'package:get/get.dart';

import '../controllers/collection_items_controller.dart';

class CollectionItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CollectionItemsController>(
      () => CollectionItemsController(),
    );
  }
}
