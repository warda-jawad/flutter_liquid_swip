import 'package:expectations/model/user.dart';

class Winners {
  String? status;
  int? errors;
  List<WinnersData>? data;

  Winners({this.status, this.errors, this.data});

  Winners.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((element) {
        data!.add(WinnersData.fromJson(element));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    data['errors'] = this.errors;
    if (this.data != null) {
      data['data'] = this.data!.map((element) => element.toJson()).toList();
    }
    return data;
  }
}

class WinnersData {
  int? id;
  int? userId;
  int? matchId;
  String? createdAt;
  String? updatedAt;
  UserData? user;

  WinnersData(
      {this.id,
        this.userId,
        this.matchId,
        this.createdAt,
        this.updatedAt,
        this.user});

  WinnersData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    matchId = json['match_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? UserData.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['match_id'] = this.matchId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

/*
class User {
  int? id;
  String? name;
  String? email;
  Null? emailVerifiedAt;
  String? dateOfBirth;
  Null? athleticInclinations;
  String? address;
  int? phone;
  String? image;
  String? status;
  String? type;
  Null? tokenFb;
  String? createdAt;
  String? updatedAt;

  User(
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
        this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['date_of_birth'] = this.dateOfBirth;
    data['athletic_inclinations'] = this.athleticInclinations;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['image'] = this.image;
    data['status'] = this.status;
    data['type'] = this.type;
    data['token_fb'] = this.tokenFb;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}*/
