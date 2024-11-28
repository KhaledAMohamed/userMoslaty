// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../Provider/AppConfigProvider.dart';
// import '../LoginScreen/login_screen.dart';
// import '../home/Home_Page.dart';
//
// class StartScreen extends StatefulWidget{
//   @override
//   State<StartScreen> createState() => _StartScreenState();
// }
//
// class _StartScreenState extends State<StartScreen> {
//
//   @override
//   void initState() {
//     super.initState();
//     checkLoginStatus();
//   }
//
//   Future<void> checkLoginStatus() async {
//     var provider = Provider.of<AppConfigProvider>(context, listen: false);
//     await provider.checkLoginStatus();
//   }
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     var provider = Provider.of<AppConfigProvider>(context);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: provider.isLoggedIn ? Home_Page() : LoginScreen(),
//     );
//   }
// }