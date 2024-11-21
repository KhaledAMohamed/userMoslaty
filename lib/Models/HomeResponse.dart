/// message : "Data Returned Successfully"
/// data : {"lines":[{"line_name":"القاهرة","fees":"80.00","map_image":"http://localhost/phpmyadmin/index.php?route=/table/change&db=mowaslaty-passenger-mobile-backend&table=line_data"}],"current_line":[{"starting_point":"القاهرة","ending_point":"ابنوب","estimated_time":15,"car_number":"khl28"}]}
/// code : 200

class HomeResponse {
  HomeResponse({
      this.message, 
      this.data, 
      this.code,});

  HomeResponse.fromJson(dynamic json) {
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

/// lines : [{"line_name":"القاهرة","fees":"80.00","map_image":"http://localhost/phpmyadmin/index.php?route=/table/change&db=mowaslaty-passenger-mobile-backend&table=line_data"}]
/// current_line : [{"starting_point":"القاهرة","ending_point":"ابنوب","estimated_time":15,"car_number":"khl28"}]

class Data {
  Data({
      this.lines, 
      this.currentLine,});

  Data.fromJson(dynamic json) {
    if (json['lines'] != null) {
      lines = [];
      json['lines'].forEach((v) {
        lines?.add(Lines.fromJson(v));
      });
    }
    if (json['current_line'] != null) {
      currentLine = [];
      json['current_line'].forEach((v) {
        currentLine?.add(CurrentLine.fromJson(v));
      });
    }
  }
  List<Lines>? lines;
  List<CurrentLine>? currentLine;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (lines != null) {
      map['lines'] = lines?.map((v) => v.toJson()).toList();
    }
    if (currentLine != null) {
      map['current_line'] = currentLine?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// starting_point : "القاهرة"
/// ending_point : "ابنوب"
/// estimated_time : 15
/// car_number : "khl28"

class CurrentLine {
  CurrentLine({
      this.startingPoint, 
      this.endingPoint, 
      this.estimatedTime, 
      this.carNumber,});

  CurrentLine.fromJson(dynamic json) {
    startingPoint = json['starting_point'];
    endingPoint = json['ending_point'];
    estimatedTime = json['estimated_time'];
    carNumber = json['car_number'];
  }
  String? startingPoint;
  String? endingPoint;
  String? estimatedTime;
  String? carNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['starting_point'] = startingPoint;
    map['ending_point'] = endingPoint;
    map['estimated_time'] = estimatedTime;
    map['car_number'] = carNumber;
    return map;
  }

}

/// line_name : "القاهرة"
/// fees : "80.00"
/// map_image : "http://localhost/phpmyadmin/index.php?route=/table/change&db=mowaslaty-passenger-mobile-backend&table=line_data"

class Lines {
  Lines({
      this.lineName, 
      this.fees, 
      this.mapImage,});

  Lines.fromJson(dynamic json) {
    lineName = json['line_name'];
    fees = json['fees'];
    mapImage = json['map_image'];
  }
  String? lineName;
  String? fees;
  String? mapImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['line_name'] = lineName;
    map['fees'] = fees;
    map['map_image'] = mapImage;
    return map;
  }

}