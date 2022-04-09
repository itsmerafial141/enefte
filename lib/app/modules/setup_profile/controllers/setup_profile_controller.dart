// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:enefte/app/modules/setup_profile/providers/setup_profile_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SetupProfileController extends GetxController with StateMixin<String> {
  var setupProfileProvider = Get.put(SetupProfileProvider());

  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController bioController;
  late String profileImage;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference users = firestore.collection('users');

  @override
  void onInit() {
    super.onInit();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    bioController = TextEditingController();
    profileImage = "profile.jpg";

    // change(true, status: RxStatus.success());
    change("0", status: RxStatus.success());
  }

  void addUsersToFirestore() {
    if (!inputIsNull()) {
      if (!inputIsEmpety(usernameController.text)) {
        if (!inputIsEmpety(emailController.text)) {
          if (!inputIsEmpety(bioController.text)) {
            if (emailIsValid()) {
              var response = setupProfileProvider.addUsers(
                profileImage,
                usernameController.text,
                emailController.text,
                bioController.text,
              );
              if (response) {
                cleaningController();
                // change(true, status: RxStatus.success());
                change("0", status: RxStatus.success());
                Get.offAllNamed(AppPages.INITIAL_NV);
              } else {
                // change(false, status: RxStatus.success());
                change("400", status: RxStatus.success());
              }
            } else {
              // change(false, status: RxStatus.error("Email isn't valid!"));
              change("212", status: RxStatus.success());
            }
          } else {
            change("1300", status: RxStatus.success());
          }
        } else {
          change("1200", status: RxStatus.success());
        }
      } else {
        change("1100", status: RxStatus.success());
      }
    } else {
      // change(false, status: RxStatus.empty());
      change("100", status: RxStatus.success());
    }
  }

  void cleaningController() {
    usernameController.text = "";
    emailController.text = "";
    bioController.text = "";
  }

  bool inputIsNull() {
    return profileImage == "" &&
        usernameController.text == "" &&
        emailController.text == "" &&
        bioController.text == "" &&
        profileImage.isEmpty &&
        usernameController.text.isEmpty &&
        emailController.text.isEmpty &&
        bioController.text.isEmpty;
  }

  bool inputIsEmpety(String input) {
    return input.isEmpty || input == "";
  }

  bool emailIsValid() {
    return EmailValidator.validate(emailController.text);
  }
}
