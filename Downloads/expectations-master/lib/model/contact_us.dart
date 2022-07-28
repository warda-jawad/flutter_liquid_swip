class ContactUs {
  String? status;
  int? errors;
  ContactUsData? data;

  ContactUs({this.status, this.errors, this.data});

  ContactUs.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    data = json['data'] != null ? ContactUsData.fromJson(json['data']) : null;
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

class ContactUsData {
  String? title;
  String? phone;
  String? description;
  String? updatedAt;
  String? createdAt;
  int? id;

  ContactUsData(
      {this.title,
        this.phone,
        this.description,
        this.updatedAt,
        this.createdAt,
        this.id});

  ContactUsData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    phone = json['phone'];
    description = json['description'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title;
    data['phone'] = this.phone;
    data['description'] = this.description;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}