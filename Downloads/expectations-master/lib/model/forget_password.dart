class ForgetPassword {
  String? status;
  int? errors;
  String? data;

  ForgetPassword({this.status, this.errors, this.data});

  ForgetPassword.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errors = json['errors'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    data['errors'] = this.errors;
    data['data'] = this.data;
    return data;
  }
}
