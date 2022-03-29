import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController with StateMixin {
  var profileTabsIndex = 0.obs;

  void changeTabIndexProfile(int index) {
    profileTabsIndex.value = index;
    change(index, status: RxStatus.success());
  }

  Size textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }

  @override
  void onInit() {
    super.onInit();
    changeTabIndexProfile(0);
  }
}
