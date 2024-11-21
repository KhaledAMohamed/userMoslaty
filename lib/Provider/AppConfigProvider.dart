import 'package:flutter/material.dart';

import '../Models/UserData.dart';
import '../Models/UserDataResponse.dart';

class AppConfigProvider extends ChangeNotifier{
  String? _userId;
  UserDataResponse? _userData;

  String? get userId => _userId;
  UserDataResponse? get userData => _userData;

  void setUserId(String id) {
    _userId = id;
    notifyListeners();
  }

  void setUserData(UserDataResponse userData) {
    _userData = userData;
    notifyListeners();
  }
}