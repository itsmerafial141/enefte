import 'dart:convert';

import 'package:enefte/app/modules/setup_profile/responses/setup_profile_response.dart';
import 'package:get/get.dart';

class SetupProfileProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl =
        'https://firestore.googleapis.com/v1/projects/enefte-afeef/databases/(default)/documents';
  }

  Future<String> addUsers(
    String username,
    String email,
    String bio,
  ) async {
    final body = json.encode(
      {
        "fields": {
          "username": {"stringValue": "1111"},
          "email": {"stringValue": "1111"},
          "bio": {"stringValue": "1111"}
        }
      },
    );
    final response = await post(
      "https://firestore.googleapis.com/v1/projects/enefte-afeef/databases/(default)/documents/users?key=AIzaSyB8lYRVRG8XFRNMzsqxAUytVyNu8NNazps",
      // MyStrings.url + "/users?key=" + MyStrings.api_key,
      body,
    );
    // if (response.status.hasError) {
    //   print(response.statusText.toString());
    //   print("error bro!");
    //   return Future.error(response.statusText.toString());
    // } else {
    //   print(response.bodyString.toString());
    //   print("Success bro!");
    //   return setupProfileResponseFromJson(response.bodyString.toString());
    // }
    if (response.bodyString.toString() != "null") {
      return response.bodyString.toString();
    } else {
      return "Gagal hapus data!";
    }
  }
}
