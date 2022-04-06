// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enefte/app/modules/setup_profile/providers/setup_profile_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SetupProfileController extends GetxController with StateMixin<String> {
  var setupProfileProvider = Get.put(SetupProfileProvider());

  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController bioController;

  // late FirebaseFirestore firestore;
  // late CollectionReference users;

  @override
  void onInit() {
    super.onInit();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    bioController = TextEditingController();

    // firestore = FirebaseFirestore.instance;
    // users = firestore.collection('users');
  }

  void addUsersToFirestore() {
    try {
      setupProfileProvider
          .addUsers(
        usernameController.text,
        emailController.text,
        bioController.text,
      )
          .then(
        (value) {
          print(value);
        },
      );
      print("Success!");
    } catch (err) {
      print("Error");
      throw err.toString();
    }
  }

  // void addAktivitas() {
  //   try {
  //     homepageProvider
  //         .saveAktivitas(
  //           formatedDate(initialDate.value).toString(),
  //           targetController.text,
  //           onKategoriSelected.toString(),
  //           realitaController.text,
  //           onWaktuSelected.toString(),
  //         )
  //         .then(
  //           (value) => addAktivitasToList(value.name),
  //         );
  //     change(null, status: RxStatus.success());
  //   } catch (err) {
  //     change(null, status: RxStatus.error());
  //     throw err.toString();
  //   }
  // }
}
