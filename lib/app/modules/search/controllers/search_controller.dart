import 'package:get/get.dart';

class SearchController extends GetxController {
  final isFilled = false.obs;

  // late TextEditingController searchController;

  void searchCondition(String value) {
    if (value.isNotEmpty) {
      print("terisi : " + value);
      isFilled.value = true;
    } else {
      print("Kozong : " + value);
      isFilled.value = false;
    }
  }
}
