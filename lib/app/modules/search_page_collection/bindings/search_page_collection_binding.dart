import 'package:get/get.dart';

import '../controllers/search_page_collection_controller.dart';

class SearchPageCollectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchPageCollectionController>(
      () => SearchPageCollectionController(),
    );
  }
}
