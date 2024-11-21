/// message : "Data Returned Successfully"
/// data : {"id":4,"sector_order":4,"image_link":"file:///C:/Users/DELL/Downloads/Passenger%20App%20Arabic%20order.pdf","data":"المعلمومات المطلوبة لأنشاء حساب:فعندما تقوم بإنشاء حساب عبر تطبيقنا تقوم بتقديم عنوان البريد الألكترونى الخاص بك و تحديد كلمة السر متفردة للوصول إلى التطبيق.\nيمكنك ان تقوم بتغيير المعلومات التى تم حفظها فى اى وقت.\nقد نقوم كذلك بجمع معلومات تقنية معينة من جهاز الكمبيوتر الخاص بك و هذه المعلومات التقنية قد تشمل عنوان بروتوكول الإنترنت \"IP\" الخاص بك ‘  و نظام التشغيل الخاص بجهاز الكمبيوتر ‘ و نوع البرنامج\n","show_flag":1,"created_at":null,"updated_at":null}
/// code : 200

class GetInfoResponse {
  GetInfoResponse({
      this.message, 
      this.data, 
      this.code,});

  GetInfoResponse.fromJson(dynamic json) {
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

/// id : 4
/// sector_order : 4
/// image_link : "file:///C:/Users/DELL/Downloads/Passenger%20App%20Arabic%20order.pdf"
/// data : "المعلمومات المطلوبة لأنشاء حساب:فعندما تقوم بإنشاء حساب عبر تطبيقنا تقوم بتقديم عنوان البريد الألكترونى الخاص بك و تحديد كلمة السر متفردة للوصول إلى التطبيق.\nيمكنك ان تقوم بتغيير المعلومات التى تم حفظها فى اى وقت.\nقد نقوم كذلك بجمع معلومات تقنية معينة من جهاز الكمبيوتر الخاص بك و هذه المعلومات التقنية قد تشمل عنوان بروتوكول الإنترنت \"IP\" الخاص بك ‘  و نظام التشغيل الخاص بجهاز الكمبيوتر ‘ و نوع البرنامج\n"
/// show_flag : 1
/// created_at : null
/// updated_at : null

class Data {
  Data({
      this.id, 
      this.sectorOrder, 
      this.imageLink, 
      this.data, 
      this.showFlag, 
      this.createdAt, 
      this.updatedAt,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    sectorOrder = json['sector_order'];
    imageLink = json['image_link'];
    data = json['data'];
    showFlag = json['show_flag'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  int? sectorOrder;
  String? imageLink;
  String? data;
  int? showFlag;
  dynamic createdAt;
  dynamic updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['sector_order'] = sectorOrder;
    map['image_link'] = imageLink;
    map['data'] = data;
    map['show_flag'] = showFlag;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}