class DataResponse {
  dynamic id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  DataResponse(
      {this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory DataResponse.fromJson(dynamic json) {
    return DataResponse(
      id: json['id'],
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar']
    );
  }
}
