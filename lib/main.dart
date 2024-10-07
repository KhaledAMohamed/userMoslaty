import 'package:flutter/material.dart';
import 'Screens/Sign_up/sign_up.dart';

void main() {
  runApp(const User_Moslaty());
}

class User_Moslaty extends StatelessWidget {
  const User_Moslaty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sign_UpPage(),
    );
  }
}
