class Notifications{
  String? status;
  int? errors;
  List<NotificationData>? data;

  Notifications({this.status, this.errors, this.data});

  Notifications.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((element) {
        data!.add(new NotificationData.fromJson(element));
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

class NotificationData {
  int? id;
  int? receiverId;
  int? matchId;
  String? message;
  String? createdAt;
  String? updatedAt;

  NotificationData(
      {this.id,
        this.receiverId,
        this.matchId,
        this.message,
        this.createdAt,
        this.updatedAt});

  NotificationData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    receiverId = json['receiver_id'];
    matchId = json['match_id'];
    message = json['message'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['receiver_id'] = this.receiverId;
    data['match_id'] = this.matchId;
    data['message'] = this.message;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}