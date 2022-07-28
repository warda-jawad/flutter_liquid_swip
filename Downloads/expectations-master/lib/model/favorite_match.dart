class FavoriteMatch {

  int? id;
  int? userId;
  int? matchId;

  FavoriteMatch({this.id, this.userId, this.matchId});

  FavoriteMatch.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    matchId = json['match_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['match_id'] = this.matchId;
    return data;
  }

}