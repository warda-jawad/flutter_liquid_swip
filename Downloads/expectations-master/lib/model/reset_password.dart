import 'package:expectations/model/user.dart';

class ResetPassword {
  String? status;
  int? errors;
  UserData? data;
  int? code;
  String? message;

  ResetPassword({this.status, this.errors, this.data});

  ResetPassword.message(Map<String, dynamic> json){
    status = json['status'];
    errors = json['errors'];
    code = json['code'];
    message = json['data'];
  }

  ResetPassword.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    data = json['data'] != null ? UserData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['errors'] = this.errors;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}