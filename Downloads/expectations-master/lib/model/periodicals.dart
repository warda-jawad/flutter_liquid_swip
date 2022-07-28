import 'package:expectations/model/match.dart';
import 'package:expectations/model/team.dart';

class Periodicals {
  String? status;
  int? errors;
  List<PeriodicalsData>? data;

  Periodicals({this.status, this.errors, this.data});

  Periodicals.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data!.add(PeriodicalsData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    data['errors'] = this.errors;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PeriodicalsData {
  int? id;
  String? name;
  int? matchsCount;
  String? image;
  String? createdAt;
  String? updatedAt;
  List<Match>? matches;


  PeriodicalsData.test({this.name, this.matches});

  PeriodicalsData(
      {this.id, this.name, this.matchsCount, this.image, this.createdAt, this.updatedAt, this.matches});

  PeriodicalsData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    matchsCount = json['match_count'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['match'] != null) {
      matches = <Match>[];
      json['match'].forEach((v) {
        matches!.add(Match.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['match_count'] = this.matchsCount;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.matches != null) {
      data['match'] = this.matches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
