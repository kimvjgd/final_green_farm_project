import 'package:final_smart_farm/data/model/firestore_keys.dart';

class AppUserModel {
  String? uid;
  String? name;
  String? email;


  AppUserModel({this.uid, this.name, this.email});

  factory AppUserModel.fromJson(Map<String, dynamic> json) {
    return AppUserModel(
      uid: json[KEY_USER_UID] == null ? "" : json[KEY_USER_UID] as String,
      name: json[KEY_USER_NAME] == null ? "" : json[KEY_USER_NAME] as String,
      email: json[KEY_USER_EMAIL] == null ? "" : json[KEY_USER_EMAIL] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      KEY_USER_UID: uid,
      KEY_USER_NAME: name,
      KEY_USER_EMAIL: email,
    };
  }
}