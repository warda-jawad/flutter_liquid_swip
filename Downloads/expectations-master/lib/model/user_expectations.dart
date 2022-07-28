import 'package:expectations/model/match.dart';

class UserExpectations {
  String? status;
  int? errors;
  List<ExpectationData>? data;

  UserExpectations({this.status, this.errors, this.data});

  UserExpectations.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((element) {
        data!.add(new ExpectationData.fromJson(element));
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

class ExpectationData {
  int? id;
  int? userId;
  int? matchId;
  int? result1;
  int? result2;
  String? createdAt;
  String? updatedAt;
  Match? match;


  ExpectationData(
      {this.id,
        this.userId,
        this.matchId,
        this.result1,
        this.result2,
        this.createdAt,
        this.updatedAt,
        this.match});

  ExpectationData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    matchId = json['match_id'];
    result1 = json['result_1'];
    result2 = json['result_2'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    match = json['match'] != null ? Match.fromJson(json['match']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['match_id'] = this.matchId;
    data['result_1'] = this.result1;
    data['result_2'] = this.result2;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.match != null) {
      data['match'] = this.match!.toJson();
    }
    return data;
  }
}
