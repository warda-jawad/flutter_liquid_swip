class Awards {
  String? status;
  int? errors;
  List<AwardData>? data;

  Awards({this.status, this.errors, this.data});

  Awards.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((element) {
        data!.add(new AwardData.fromJson(element));
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

class AwardData {
  int? id;
  int? supportersId;
  int? matchId;
  String? name;
  String? title;
  String? description;
  String? image;
  String? createdAt;
  String? updatedAt;

  AwardData(
      {this.id,
        this.supportersId,
        this.matchId,
        this.name,
        this.title,
        this.description,
        this.image,
        this.createdAt,
        this.updatedAt});

  AwardData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    supportersId = json['supporters_id'];
    matchId = json['match_id'];
    name = json['name'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['supporters_id'] = this.supportersId;
    data['match_id'] = this.matchId;
    data['name'] = this.name;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}