import 'package:get/get.dart';

import '../controllers/setup_profile_controller.dart';

class SetupProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SetupProfileController>(
      () => SetupProfileController(),
    );
  }
}
