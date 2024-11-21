import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_moslaty/Provider/AppConfigProvider.dart';
import 'Screens/LoginScreen/login_screen.dart';


void main() {
  runApp( ChangeNotifierProvider(
    create: (context) => AppConfigProvider(),
      child: User_Moslaty()));
}

class User_Moslaty extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),

    );
  }
}
