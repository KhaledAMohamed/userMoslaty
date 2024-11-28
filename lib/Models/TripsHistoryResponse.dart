/// message : "Data Returned Successfully"
/// data : [{"id":2,"line_name":"ابنوب","starting_point":"القاهرة","ending_point":"أبنوب","fees":"80.00","car_number":"ا ح م 341","driver_name":"محمود","estimated_time":"200","passenger_id":1,"created_at":null,"updated_at":null},{"id":3,"line_name":"الصعيد","starting_point":"القاهرة","ending_point":"الصعيد","fees":"150.00","car_number":"KHL982","driver_name":"نور قدرى","estimated_time":"55","passenger_id":1,"created_at":null,"updated_at":null}]
/// code : 200

class TripsHistoryResponse {
  TripsHistoryResponse({
      this.message, 
      this.data, 
      this.code,});

  TripsHistoryResponse.fromJson(dynamic json) {
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

/// id : 2
/// line_name : "ابنوب"
/// starting_point : "القاهرة"
/// ending_point : "أبنوب"
/// fees : "80.00"
/// car_number : "ا ح م 341"
/// driver_name : "محمود"
/// estimated_time : "200"
/// passenger_id : 1
/// created_at : null
/// updated_at : null

class Data {
  Data({
      this.id, 
      this.lineName, 
      this.startingPoint, 
      this.endingPoint, 
      this.fees, 
      this.carNumber, 
      this.driverName, 
      this.estimatedTime, 
      this.passengerId, 
      this.createdAt, 
      this.updatedAt,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    lineName = json['line_name'];
    startingPoint = json['starting_point'];
    endingPoint = json['ending_point'];
    fees = json['fees'];
    carNumber = json['car_number'];
    driverName = json['driver_name'];
    estimatedTime = json['estimated_time'];
    passengerId = json['passenger_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? lineName;
  String? startingPoint;
  String? endingPoint;
  String? fees;
  String? carNumber;
  String? driverName;
  String? estimatedTime;
  int? passengerId;
  dynamic createdAt;
  dynamic updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['line_name'] = lineName;
    map['starting_point'] = startingPoint;
    map['ending_point'] = endingPoint;
    map['fees'] = fees;
    map['car_number'] = carNumber;
    map['driver_name'] = driverName;
    map['estimated_time'] = estimatedTime;
    map['passenger_id'] = passengerId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}