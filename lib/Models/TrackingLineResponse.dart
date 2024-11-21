/// message : "Data Returned Successfully"
/// data : {"starting_point":"القاهرة","ending_point":"أبنوب","fees":"80.00","estimated_time":20,"number_stations":3,"stations":["القاهرة","الشرق","ابنوب"],"car_number":"ا ح م 341","driver_name":"محمود"}
/// code : 200

class TrackingLineResponse {
  TrackingLineResponse({
      this.message, 
      this.data, 
      this.code,});

  TrackingLineResponse.fromJson(dynamic json) {
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

/// starting_point : "القاهرة"
/// ending_point : "أبنوب"
/// fees : "80.00"
/// estimated_time : 20
/// number_stations : 3
/// stations : ["القاهرة","الشرق","ابنوب"]
/// car_number : "ا ح م 341"
/// driver_name : "محمود"

class Data {
  Data({
      this.startingPoint, 
      this.endingPoint, 
      this.fees, 
      this.estimatedTime, 
      this.numberStations, 
      this.stations, 
      this.carNumber, 
      this.driverName,});

  Data.fromJson(dynamic json) {
    startingPoint = json['starting_point'];
    endingPoint = json['ending_point'];
    fees = json['fees'];
    estimatedTime = json['estimated_time'];
    numberStations = json['number_stations'];
    stations = json['stations'] != null ? json['stations'].cast<String>() : [];
    carNumber = json['car_number'];
    driverName = json['driver_name'];
  }
  String? startingPoint;
  String? endingPoint;
  String? fees;
  int? estimatedTime;
  int? numberStations;
  List<String>? stations;
  String? carNumber;
  String? driverName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['starting_point'] = startingPoint;
    map['ending_point'] = endingPoint;
    map['fees'] = fees;
    map['estimated_time'] = estimatedTime;
    map['number_stations'] = numberStations;
    map['stations'] = stations;
    map['car_number'] = carNumber;
    map['driver_name'] = driverName;
    return map;
  }

}