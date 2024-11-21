/// status : true
/// message : "User Logged In Successfully"
/// token : "10|IKYaUqiQpigDoSO7bEdz4y59jl0TDZ7PHXiKl9dV8180db4d"

class LoginResponse {
  LoginResponse({
      this.status, 
      this.message, 
      this.token,
      this.user});

  LoginResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    token = json['token'];
    user = json['user'];

  }
  bool? status;
  String? message;
  String? token;
  int? user;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    map['token'] = token;
    map['user'] = user;

    return map;
  }

}