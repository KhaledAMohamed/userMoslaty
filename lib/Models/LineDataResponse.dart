/// message : "Data Returned Successfully"
/// data : [{"line_name":"القاهرة","fees":"80.00","estimated_time":15,"number_stations":3,"available_flag":1}]
/// code : 200

class LinesDataResponse {
  LinesDataResponse({
      this.message, 
      this.data, 
      this.code,});

  LinesDataResponse.fromJson(dynamic json) {
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    code = json['code'];
  }
  String? message;
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

/// line_name : "القاهرة"
/// fees : "80.00"
/// estimated_time : 15
/// number_stations : 3
/// available_flag : 1

class Data {
  Data({
      this.lineName, 
      this.fees, 
      this.estimatedTime, 
      this.numberStations, 
      this.availableFlag,});

  Data.fromJson(dynamic json) {
    lineName = json['line_name'];
    fees = json['fees'];
    estimatedTime = json['estimated_time'];
    numberStations = json['number_stations'];
    availableFlag = json['available_flag'];
  }
  String? lineName;
  String? fees;
  int? estimatedTime;
  int? numberStations;
  int? availableFlag;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['line_name'] = lineName;
    map['fees'] = fees;
    map['estimated_time'] = estimatedTime;
    map['number_stations'] = numberStations;
    map['available_flag'] = availableFlag;
    return map;
  }

}