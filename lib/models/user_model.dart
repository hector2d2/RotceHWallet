import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.displayName,
    required this.uid,
    required this.email,
    required this.provider,
    this.photo = '',
    this.phoneNumber = '',
  });

  final String displayName;
  final String uid;
  final String email;
  final String photo;
  final String provider;
  final String phoneNumber;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        displayName: json["DisplayName"],
        uid: json["UID"],
        email: json["Email"],
        photo: json["Photo"],
        provider: json["Provider"],
        phoneNumber: json["PhoneNumber"],
      );

  Map<String, dynamic> toJson() => {
        "DisplayName": displayName,
        "UID": uid,
        "Email": email,
        "Photo": photo,
        "Provider": provider,
        "PhoneNumber": phoneNumber,
      };
}
