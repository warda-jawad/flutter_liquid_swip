class Boarding {

  String? status;
  int? errors;
  List<BoardingData>? data;

  Boarding({this.status, this.errors, this.data});

  Boarding.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((element) => data!.add(BoardingData.fromJson(element)));
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

class BoardingData {
  int? id;
  String? type;
  String? title;
  String? description;

  BoardingData({this.id, this.type, this.title, this.description});

  BoardingData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['title'] = this.title;
    data['description'] = this.description;
    return data;
  }

}
