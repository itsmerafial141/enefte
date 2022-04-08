import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class SetupProfileProvider extends GetConnect {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference users = firestore.collection('users');

  bool addUsers(
    String image,
    String username,
    String email,
    String bio,
  ) {
    try {
      users.add({
        'profile_img': image,
        'username': username,
        'email': email,
        'bio': bio,
      });
      return true;
    } catch (err) {
      print(err.toString());
      return false;
    }
  }
}
