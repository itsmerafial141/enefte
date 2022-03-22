import 'package:get/get.dart';

import '../controllers/navigasi_controller.dart';

class NavigasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigasiController>(
      () => NavigasiController(),
    );
  }
}
