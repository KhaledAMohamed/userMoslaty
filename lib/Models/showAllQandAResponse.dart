/// message : null
/// data : [{"id":2,"Question":"كيف تعرف مسار رحلتك من خلال التطبيق؟","Answer":"يمكنك معرفة مسار رحلتك عن طريق الكود المصور و فى حالة تعذر الكود المصور يمكنك أستخدام الكود الرقمى البديل الظاهر او ادخاله فى البحث.\r\n","Rank":0,"show_flag":1,"category_name":"questions"},{"id":3,"Question":"السؤال التانى","Answer":"إجابة السؤال التانى","Rank":0,"show_flag":1,"category_name":"questions"},{"id":4,"Question":"السؤال التالت","Answer":"إجابة السؤال التالت","Rank":0,"show_flag":1,"category_name":"questions"},{"id":5,"Question":"السؤال الرابع","Answer":"إجابة السؤال الرابع","Rank":0,"show_flag":1,"category_name":"questions"},{"id":6,"Question":"question2","Answer":"answer2","Rank":6,"show_flag":1,"category_name":"category"}]
/// code : 200

class ShowFAQsResponse {
  ShowFAQsResponse({
      this.message, 
      this.data, 
      this.code,});

  ShowFAQsResponse.fromJson(dynamic json) {
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    code = json['code'];
  }
  dynamic message;
  List<Data>? data;
  int? code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    map['code'] = code;
    return map;
  }

}

/// id : 2
/// Question : "كيف تعرف مسار رحلتك من خلال التطبيق؟"
/// Answer : "يمكنك معرفة مسار رحلتك عن طريق الكود المصور و فى حالة تعذر الكود المصور يمكنك أستخدام الكود الرقمى البديل الظاهر او ادخاله فى البحث.\r\n"
/// Rank : 0
/// show_flag : 1
/// category_name : "questions"

class Data {
  Data({
      this.id, 
      this.question, 
      this.answer, 
      this.rank, 
      this.showFlag, 
      this.categoryName,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    question = json['Question'];
    answer = json['Answer'];
    rank = json['Rank'];
    showFlag = json['show_flag'];
    categoryName = json['category_name'];
  }
  int? id;
  String? question;
  String? answer;
  int? rank;
  int? showFlag;
  String? categoryName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Question'] = question;
    map['Answer'] = answer;
    map['Rank'] = rank;
    map['show_flag'] = showFlag;
    map['category_name'] = categoryName;
    return map;
  }

}