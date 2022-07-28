
import 'dart:convert';

User userfromJson(String data) => User.toObject(json.decode(data));
UserData userDataJson(String data) => UserData.toObject(json.decode(data));

class User {
  String? status;
  int? errors;
  UserData? data;
  String? message;

  User({this.status, this.errors, this.data});

  User.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    data = json['data'] != null ? new UserData.fromJson(json['data']) : null;
  }

  User.message(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    message = json['data'];
  }

  factory User.toObject(Map<String, dynamic> json) => User(
        status: json['status'],
        errors: json['errors'],
        data: UserData.toObject(json['data']),
      );

  Map<String, dynamic> toJson() => {
        'status': this.status,
        'errors': this.errors,
        'date': this.data!.toJson()
      };
}

class UserData {
  int? id;
  String? name;
  String? email;
  String? emailVerifiedAt;
  String? dateOfBirth;
  Null? athleticInclinations;
  String? address;
  String? phone;
  String? image;
  String? status;
  String? type;
  String? tokenFb;
  String? createdAt;
  String? updatedAt;
  String? accessToken;

  UserData(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.dateOfBirth,
      this.athleticInclinations,
      this.address,
      this.phone,
      this.image,
      this.status,
      this.type,
      this.tokenFb,
      this.createdAt,
      this.updatedAt,
      this.accessToken});

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    dateOfBirth = json['date_of_birth'];
    athleticInclinations = json['athletic_inclinations'];
    address = json['address'];
    phone = json['phone'];
    image = json['image'];
    status = json['status'];
    type = json['type'];
    tokenFb = json['token_fb'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    accessToken = json['accessToken'];
  }

  factory UserData.toObject(Map<String, dynamic> json) => UserData(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        emailVerifiedAt: json['email_verified_at'],
        dateOfBirth: json['date_of_birth'],
        athleticInclinations: json['athletic_inclinations'],
        address: json['address'],
        phone: json['phone'],
        image: json['image'],
        status: json['status'],
        type: json['type'],
        tokenFb: json['token_fb'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        accessToken: json['accessToken'],
      );

  Map<String, dynamic> toJson() => {
        'id': this.id,
        'name': this.name,
        'email': this.email,
        'email_verified_at': this.emailVerifiedAt,
        'date_of_birth': this.dateOfBirth,
        'athletic_inclinations': this.athleticInclinations,
        'address': this.address,
        'phone': this.phone,
        'image': this.image,
        'status': this.status,
        'type': this.type,
        'token_fb': this.tokenFb,
        'created_at': this.createdAt,
        'updated_at': this.updatedAt,
        'accessToken': this.accessToken,
      };
}
