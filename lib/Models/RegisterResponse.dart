/// status : true
/// message : "User Created Successfully"
/// user : 5
/// token : "9|qUvq2nRDFanGNRQwp9QTPnpPHJNnaK3g5LOdxSYXebd2084b"

class RegisterResponse {
  RegisterResponse({
      this.status, 
      this.message, 
      this.user, 
      this.token,});

  RegisterResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    user = json['user'];
    token = json['token'];
  }
  bool? status;
  String? message;
  int? user;
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    map['user'] = user;
    map['token'] = token;
    return map;
  }

}