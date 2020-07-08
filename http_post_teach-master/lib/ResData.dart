// To parse this JSON data, do
//
//     final resData = resDataFromJson(jsonString);

import 'dart:convert';

ResData resDataFromJson(String str) => ResData.fromJson(json.decode(str));

String resDataToJson(ResData data) => json.encode(data.toJson());

class ResData {
  ResData({
    this.profileDetails,
  });

  List<ProfileDetail> profileDetails;

  factory ResData.fromJson(Map<String, dynamic> json) => ResData(
    profileDetails: List<ProfileDetail>.from(json["profile_details"].map((x) => ProfileDetail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "profile_details": List<dynamic>.from(profileDetails.map((x) => x.toJson())),
  };
}

class ProfileDetail {
  ProfileDetail();

  factory ProfileDetail.fromJson(Map<String, dynamic> json) => ProfileDetail(
  );

  Map<String, dynamic> toJson() => {
  };
}
