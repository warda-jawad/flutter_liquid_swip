import 'dart:convert';

// Register registerUserJson(String data) => Register.toObject(json.decode(data));
// RegisterData registerDataJson(String data) => RegisterData.toObject(json.decode(data));

class Register {
  String? status;
  int? errors;
  RegisterData? data;
  String? message;

  Register({this.status, this.errors, this.data});

  Register.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    data = json['data'] != null ? new RegisterData.fromJson(json['data']) : null;
  }

  Register.message(Map<String, dynamic> json){
    status = json['status'];
    errors = json['errors'];
    message = json['data'];
  }

  // factory Register.toObject(Map<String, dynamic> json) => Register(
  //       status: json['status'],
  //       errors: json['errors'],
  //       data: RegisterData.toObject(json['data']),
  //     );

  Map<String, dynamic> toJson() => {
        'status': this.status,
        'errors': this.errors,
        'data': this.data!.toJson()
      };

}

class RegisterData {

  String? name;
  String? email;
  String? phone;
  String? dateOfBirth;
  String? address;
  String? image;
  String? type;
  String? updatedAt;
  String? createdAt;
  int? id;
  String? token;

  RegisterData({this.name,
    this.email,
    this.phone,
    this.dateOfBirth,
    this.address,
    this.image,
    this.type,
    this.updatedAt,
    this.createdAt,
    this.id,
    this.token});

  RegisterData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    dateOfBirth = json['date_of_birth'];
    address = json['address'];
    image = json['image'];
    type = json['type'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
    token = json['token'];
  }

  // factory RegisterData.toObject(Map<String, dynamic> json) =>
  //     RegisterData(
  //       name: json['name'],
  //       email: json['email'],
  //       phone: json['phone'],
  //       dateOfBirth: json['date_of_birth'],
  //       address: json['address'],
  //       image: json['image'],
  //       type: json['type'],
  //       updatedAt: json['updated_at'],
  //       createdAt: json['created_at'],
  //       id: json['id'],
  //       token: json['token'],
  //     );

  Map<String, dynamic> toJson() =>
      {
        'id': this.id,
        'name': this.name,
        'email': this.email,
        'phone': this.phone,
        'date_of_birth': this.dateOfBirth,
        'address': this.address,
        'type': this.type,
        'created_at': this.createdAt,
        'updated_at': this.updatedAt,
        'token': this.token,
      };

}
