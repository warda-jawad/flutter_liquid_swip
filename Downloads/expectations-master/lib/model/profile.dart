class Profile {
  String? status;
  int? errors;
  ProfileData? data;

  Profile({this.status, this.errors, this.data});

  Profile.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    data = json['data'] != null ? ProfileData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    data['errors'] = this.errors;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class ProfileData{

  int? id;
  String? name;
  String? email;
  Null? emailVerifiedAt;
  String? dateOfBirth;
  Null? athleticInclinations;
  String? address;
  String? phone;
  String? image;
  String? status;
  String? type;
  Null? tokenFb;
  String? createdAt;
  String? updatedAt;

  ProfileData(
      {this.id,
        this.name,
        this.email,
        this.emailVerifiedAt,
        this.dateOfBirth,
        this.athleticInclinations,
        this.address,
        this.phone,
        this.image,
        this.status,
        this.type,
        this.tokenFb,
        this.createdAt,
        this.updatedAt});

  ProfileData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    dateOfBirth = json['date_of_birth'];
    athleticInclinations = json['athletic_inclinations'];
    address = json['address'];
    phone = json['phone'];
    image = json['image'];
    status = json['status'];
    type = json['type'];
    tokenFb = json['token_fb'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['date_of_birth'] = this.dateOfBirth;
    data['athletic_inclinations'] = this.athleticInclinations;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['image'] = this.image;
    data['status'] = this.status;
    data['type'] = this.type;
    data['token_fb'] = this.tokenFb;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }

}
