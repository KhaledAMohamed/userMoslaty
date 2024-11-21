/// message : "Data  Returned Successfully"
/// data : {"name":"رنا أسامة ابوباشا","emails":"rana@mail.com","phone":"01025471091","image_link":null}
/// code : 200

class UserDataResponse {
  UserDataResponse({
      this.message, 
      this.data, 
      this.code,});

  UserDataResponse.fromJson(dynamic json) {
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    code = json['code'];
  }
  String? message;
  Data? data;
  int? code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['code'] = code;
    return map;
  }

}

/// name : "رنا أسامة ابوباشا"
/// emails : "rana@mail.com"
/// phone : "01025471091"
/// image_link : null

class Data {
  Data({
      this.name, 
      this.emails, 
      this.phone, 
      this.imageLink,});

  Data.fromJson(dynamic json) {
    name = json['name'];
    emails = json['emails'];
    phone = json['phone'];
    imageLink = json['image_link'];
  }
  String? name;
  String? emails;
  String? phone;
  dynamic imageLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['emails'] = emails;
    map['phone'] = phone;
    map['image_link'] = imageLink;
    return map;
  }

}