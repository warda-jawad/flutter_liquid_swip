import 'package:expectations/model/user.dart';
import 'package:expectations/model/match.dart';

class Favorite{

  String? status;
  int? errors;
  List<FavoriteData>? data;

  Favorite({this.status, this.errors, this.data});

  Favorite.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((element) {
        data!.add(new FavoriteData.fromJson(element));
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

class FavoriteData{

  int? id;
  int? userId;
  int? matchId;
  UserData? user;
  Match? match;

  FavoriteData({this.id, this.userId, this.matchId, this.user, this.match});

  FavoriteData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    matchId = json['match_id'];
    user = json['user'] != null ? UserData.fromJson(json['user']) : null;
    match = json['match'] != null ? Match.fromJson(json['match']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['match_id'] = this.matchId;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    if (this.match != null) {
      data['match'] = this.match!.toJson();
    }
    return data;
  }

}