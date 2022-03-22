import 'package:get/get.dart';

class NavigasiController extends GetxController with StateMixin {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    change(tabIndex.value, status: RxStatus.success());
  }
}
