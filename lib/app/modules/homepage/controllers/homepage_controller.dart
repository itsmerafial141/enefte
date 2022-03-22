import 'package:enefte/app/values/strings.dart';
import 'package:get/get.dart';

class HomepageController extends GetxController with StateMixin {
  var kategoriClicked = 0.obs;
  var favoriteClicked = [].obs;
  var temp = false.obs;

  @override
  void onInit() {
    super.onInit();

    for (int k = 0; k < MyStrings.listKategoriHomePage.length; k++) {
      favoriteClicked.add(false);
    }
  }

  void favoriteToggle(int index) {
    temp.value = favoriteClicked[index];
    temp.toggle();
    favoriteClicked[index] = temp.value;
  }
}
