import 'package:flutter/material.dart';

import '../Models/UserDataResponse.dart';

class AppConfigProvider extends ChangeNotifier {
  String? _userId;
  UserDataResponse? _userData;

  UserDataResponse? get userData => _userData;
  String? get userId => _userId;



  void setUserId(String id) async {
  _userId = id;
  notifyListeners();
}


void setUserData(UserDataResponse userData) {
  _userData = userData;
  notifyListeners();
}

}