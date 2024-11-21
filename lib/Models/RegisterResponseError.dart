/// status : false
/// message : "validation errors"
/// errors : {"name":["The name field is required."],"email":["The email field is required."],"password":["The password field is required."],"phone":["The phone has already been taken."]}

class RegisterResponseError {
  RegisterResponseError({
      this.status, 
      this.message, 
      this.errors,});

  RegisterResponseError.fromJson(dynamic json) {
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

/// name : ["The name field is required."]
/// email : ["The email field is required."]
/// password : ["The password field is required."]
/// phone : ["The phone has already been taken."]

class Errors {
  Errors({
      this.name, 
      this.email, 
      this.password, 
      this.phone,});

  Errors.fromJson(dynamic json) {
    name = json['name'] != null ? json['name'].cast<String>() : [];
    email = json['email'] != null ? json['email'].cast<String>() : [];
    password = json['password'] != null ? json['password'].cast<String>() : [];
    phone = json['phone'] != null ? json['phone'].cast<String>() : [];
  }
  List<String>? name;
  List<String>? email;
  List<String>? password;
  List<String>? phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    map['phone'] = phone;
    return map;
  }

}