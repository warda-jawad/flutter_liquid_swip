import 'package:expectations/model/team.dart';

class Search {
  String? status;
  int? errors;
  List<SearchData>? data;

  Search({this.status, this.errors, this.data});

  Search.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((element) {
        data!.add(SearchData.fromJson(element));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['errors'] = this.errors;
    if (this.data != null) {
      data['data'] = this.data!.map((element) => element.toJson()).toList();
    }
    return data;
  }
}

class SearchData{

  int? id;
  int? userId;
  int? team1Id;
  int? team2Id;
  int? periodicalsId;
  String? timing;
  String? judgment;
  String? leagueRound;
  String? stadium;
  String? image;
  int? result1;
  int? result2;
  String? createdAt;
  Team? teamHome;
  Team? teamAway;
  Periodical? periodical;

  SearchData(
      {this.id,
        this.userId,
        this.team1Id,
        this.team2Id,
        this.periodicalsId,
        this.timing,
        this.judgment,
        this.leagueRound,
        this.stadium,
        this.image,
        this.result1,
        this.result2,
        this.createdAt,
        this.teamHome,
        this.teamAway,
        this.periodical});

  SearchData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    team1Id = json['team_1_id'];
    team2Id = json['team_2_id'];
    periodicalsId = json['periodicals_id'];
    timing = json['timing'];
    judgment = json['judgment'];
    leagueRound = json['league_round'];
    stadium = json['stadium'];
    image = json['image'];
    result1 = json['result_1'];
    result2 = json['result_2'];
    createdAt = json['created_at'];
    teamHome = json['team1'] != null ? Team.fromJson(json['team1']) : null;
    teamAway = json['team2'] != null ? Team.fromJson(json['team2']) : null;
    periodical = json['periodical'] != null
        ? Periodical.fromJson(json['periodical'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['team_1_id'] = this.team1Id;
    data['team_2_id'] = this.team2Id;
    data['periodicals_id'] = this.periodicalsId;
    data['timing'] = this.timing;
    data['judgment'] = this.judgment;
    data['league_round'] = this.leagueRound;
    data['stadium'] = this.stadium;
    data['image'] = this.image;
    data['result_1'] = this.result1;
    data['result_2'] = this.result2;
    data['created_at'] = this.createdAt;
    if (this.teamHome != null) {
      data['team1'] = this.teamHome!.toJson();
    }
    if (this.teamAway != null) {
      data['team2'] = this.teamAway!.toJson();
    }
    if (this.periodical != null) {
      data['periodical'] = this.periodical!.toJson();
    }
    return data;
  }

}

class Periodical {
  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;

  Periodical({this.id, this.name, this.createdAt, this.updatedAt});

  Periodical.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}