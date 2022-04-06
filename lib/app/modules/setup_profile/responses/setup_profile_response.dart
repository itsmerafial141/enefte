import 'dart:convert';

SetupProfileResponse setupProfileResponseFromJson(String str) =>
    SetupProfileResponse.fromJson(json.decode(str));

String setupProfileResponseToJson(SetupProfileResponse data) =>
    json.encode(data.toJson());

class SetupProfileResponse {
  SetupProfileResponse({
    required this.name,
    required this.fields,
    required this.createTime,
    required this.updateTime,
  });

  String name;
  Fields fields;
  DateTime createTime;
  DateTime updateTime;

  factory SetupProfileResponse.fromJson(Map<String, dynamic> json) =>
      SetupProfileResponse(
        name: json["name"],
        fields: Fields.fromJson(json["fields"]),
        createTime: DateTime.parse(json["createTime"]),
        updateTime: DateTime.parse(json["updateTime"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "fields": fields.toJson(),
        "createTime": createTime.toIso8601String(),
        "updateTime": updateTime.toIso8601String(),
      };
}

class Fields {
  Fields({
    required this.username,
    required this.bio,
    required this.email,
  });

  Bio username;
  Bio bio;
  Bio email;

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        username: Bio.fromJson(json["username"]),
        bio: Bio.fromJson(json["bio"]),
        email: Bio.fromJson(json["email"]),
      );

  Map<String, dynamic> toJson() => {
        "username": username.toJson(),
        "bio": bio.toJson(),
        "email": email.toJson(),
      };
}

class Bio {
  Bio({
    required this.stringValue,
  });

  String stringValue;

  factory Bio.fromJson(Map<String, dynamic> json) => Bio(
        stringValue: json["stringValue"],
      );

  Map<String, dynamic> toJson() => {
        "stringValue": stringValue,
      };
}
