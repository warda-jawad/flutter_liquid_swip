class MatchPrediction {
  String? status;
  int? errors;
  MatchPredictionData? data;

  MatchPrediction({this.status, this.errors, this.data});

  MatchPrediction.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    data = json['data'] != null ? MatchPredictionData.fromJson(json['data']) : null;
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

class MatchPredictionData{
  int? userId;
  int? matchId;
  int? result1;
  int? result2;
  String? updatedAt;
  String? createdAt;
  int? id;

  MatchPredictionData(
      {this.userId,
        this.matchId,
        this.result1,
        this.result2,
        this.updatedAt,
        this.createdAt,
        this.id});

  MatchPredictionData.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    matchId = json['match_id'];
    result1 = json['result_1'];
    result2 = json['result_2'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['match_id'] = this.matchId;
    data['result_1'] = this.result1;
    data['result_2'] = this.result2;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
