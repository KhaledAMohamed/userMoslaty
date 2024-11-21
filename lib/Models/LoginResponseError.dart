/// status : false
/// message : "validation errors"
/// errors : {"email":["The email field is required."],"password":["The password field is required."]}

class LoginResponseError {
  LoginResponseError({
      this.status, 
      this.message, 
      this.errors,});

  LoginResponseError.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    errors = json['errors'] != null ? Errors.fromJson(json['errors']) : null;
  }
  bool? status;
  String? message;
  Errors? errors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (errors != null) {
      map['errors'] = errors?.toJson();
    }
    return map;
  }

}

/// email : ["The email field is required."]
/// password : ["The password field is required."]

class Errors {
  Errors({
      this.email, 
      this.password,});

  Errors.fromJson(dynamic json) {
    email = json['email'] != null ? json['email'].cast<String>() : [];
    password = json['password'] != null ? json['password'].cast<String>() : [];
  }
  List<String>? email;
  List<String>? password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['password'] = password;
    return map;
  }

}