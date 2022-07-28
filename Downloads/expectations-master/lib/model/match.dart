import 'package:expectations/model/favorite_match.dart';
import 'package:expectations/model/team.dart';

class Match{

  int? id;
  int? userId;
  int? teamHomeId;
  int? teamAwayId;
  int? periodicalsId;
  String? timing;
  String? judgment;
  String? leagueRound;
  String? stadium;
  String? image;
  String? result1;
  String? result2;
  String? createdAt;
  Team? teamHome;
  Team? teamAway;
  List<FavoriteMatch>? favorites;

  Match(
      {this.id,
        this.userId,
        this.teamHomeId,
        this.teamAwayId,
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
        this.favorites});

  Match.test({this.id, this.teamHome, this.teamAway});

  Match.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    teamHomeId = json['team_1_id'];
    teamAwayId = json['team_2_id'];
    periodicalsId = json['periodicals_id'];
    timing = json['timing'];
    judgment = json['judgment'];
    leagueRound = json['league_round'];
    stadium = json['stadium'];
    image = json['image'];
    result1 = json['result_1'];
    result2 = json['result_2'];
    createdAt = json['created_at'];
    teamHome = json['team1'] != null ? new Team.fromJson(json['team1']) : null;
    teamAway = json['team2'] != null ? new Team.fromJson(json['team2']) : null;
    if (json['favorite'] != null) {
      favorites = [];
      json['favorite'].forEach((v) {
        favorites!.add(new FavoriteMatch.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['team_1_id'] = this.teamHomeId;
    data['team_2_id'] = this.teamAwayId;
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
    if (this.favorites != null) {
      data['favorite'] = this.favorites!.map((v) => v.toJson()).toList();
    }
    return data;
  }

}