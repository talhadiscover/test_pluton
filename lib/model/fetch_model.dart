// To parse this JSON data, do
//
//     final allGyms = allGymsFromJson(jsonString);

import 'dart:convert';

AllGyms allGymsFromJson(String str) => AllGyms.fromJson(json.decode(str));

String allGymsToJson(AllGyms data) => json.encode(data.toJson());

class AllGyms {
  String ?imageg;
  String ?status;
  List<Gym>? gyms;

  AllGyms({
    this.imageg,
    this.status,
    this.gyms,
  });

  factory AllGyms.fromJson(Map<String, dynamic> json) => AllGyms(
    imageg: json["imageg"],
    status: json["status"],
    gyms: List<Gym>.from(json["gyms"].map((x) => Gym.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "imageg": imageg,
    "status": status,
    "gyms": List<dynamic>.from(gyms!.map((x) => x.toJson())),
  };
}

class Gym {
  String? id;
  String? name;
  GymOwner? gymOwner;
  String? address;
  String? gymDays;
  String? gymTimings;
  int? rentaday;
  int? agelimit;
  String ?image;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Gym({
    this.id,
    this.name,
    this.gymOwner,
    this.address,
    this.gymDays,
    this.gymTimings,
    this.rentaday,
    this.agelimit,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Gym.fromJson(Map<String, dynamic> json) => Gym(
    id: json["_id"],
    name: json["name"],
    gymOwner: GymOwner.fromJson(json["gymOwner"]),
    address: json["address"],
    gymDays: json["gymDays"],
    gymTimings: json["gymTimings"],
    rentaday: json["rentaday"],
    agelimit: json["agelimit"],
    image: json["image"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "gymOwner": gymOwner?.toJson(),
    "address": address,
    "gymDays": gymDays,
    "gymTimings": gymTimings,
    "rentaday": rentaday,
    "agelimit": agelimit,
    "image": image,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

class GymOwner {
  String? id;
  String? name;
  String? email;
  String? dob;
  String? age;
  String? password;
  String? idPassport;
  String? idPassportPicture;
  String? country;
  String? profilepicture;
  int? phone;
  int? role;
  int? flag;
  String? token;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? idPassword;
  String? idPasswordPicture;

  GymOwner({
    this.id,
    this.name,
    this.email,
    this.dob,
    this.age,
    this.password,
    this.idPassport,
    this.idPassportPicture,
    this.country,
    this.profilepicture,
    this.phone,
    this.role,
    this.flag,
    this.token,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.idPassword,
    this.idPasswordPicture,
  });

  factory GymOwner.fromJson(Map<String, dynamic> json) => GymOwner(
    id: json["_id"],
    name: json["name"],
    email: json["email"],
    dob: json["dob"],
    age: json["age"],
    password: json["password"],
    idPassport: json["IdPassport"],
    idPassportPicture: json["IdPassport_picture"],
    country: json["country"],
    profilepicture: json["profilepicture"],
    phone: json["phone"],
    role: json["role"],
    flag: json["flag"],
    token: json["token"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    idPassword: json["IdPassword"],
    idPasswordPicture: json["IdPassword_picture"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "email": email,
    "dob": dob,
    "age": age,
    "password": password,
    "IdPassport": idPassport,
    "IdPassport_picture": idPassportPicture,
    "country": country,
    "profilepicture": profilepicture,
    "phone": phone,
    "role": role,
    "flag": flag,
    "token": token,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "IdPassword": idPassword,
    "IdPassword_picture": idPasswordPicture,
  };
}
