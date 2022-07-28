class AddFavorite {
  String? status;
  int? errors;
  AddFavorteData? data;

  AddFavorite({this.status, this.errors, this.data});

  AddFavorite.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    data = json['data'] != null ? AddFavorteData.fromJson(json['data']) : null;
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

class AddFavorteData {
  int? userId;
  int? matchId;
  int? id;

  AddFavorteData({this.userId, this.matchId, this.id});

  AddFavorteData.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    matchId = json['match_id'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['match_id'] = this.matchId;
    data['id'] = this.id;
    return data;
  }
}