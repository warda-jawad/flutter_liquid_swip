class DeleteFavorite{

  String? status;
  int? errors;
  String? data;

  DeleteFavorite({this.status, this.errors, this.data});

  DeleteFavorite.fromJson(Map<String, dynamic> json){
    status = json['status'];
    errors = json['errors'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() => {
    'status': this.status,
    'errors': this.errors,
    'data': this.data
  };
}