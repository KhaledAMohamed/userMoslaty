

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'package:user_moslaty/Widgets/Const.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';
import 'package:user_moslaty/Widgets/customApppar.dart';
import 'package:user_moslaty/Widgets/drawer.dart';

import '../QRV/QRV.dart';
class QR_Code extends StatefulWidget {
  const QR_Code({Key? key}) : super(key: key);

  @override
  State<QR_Code> createState() => _QR_CodeState();
}

class _QR_CodeState extends State<QR_Code> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(child: Drawer_Widget()),
      appBar: CustomAppBar(),
      bottomNavigationBar: const NavigationBar_C(),
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: SColor,
                        child: Text(
                          '1',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('امسح الكود'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.shade300,
                        child: const Text(
                          '2',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text('تتبع مسار الرحلة'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Image.asset(
                  'Images/QR_Code.png', //
                  height: 150,
                  width: 150,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
                   return const QRV();
                 }));
                },
                child: Text('امسح الكود'),
                style: ElevatedButton.styleFrom(
                  primary: SColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 15.0,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'في حالة عدم عمل الكود يرجى استعمال الكود الرقمي KHL982',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      )
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //
      //   children: [
      //     Center(
      //
      //       child: Image.asset('Images/QR_Code.png',
      //       width: 200,
      //         height: 200,
      //         color: SColor,
      //       ),
      //     ),
      //     InkWell(
      //       onTap: (){
      //         Navigator.push(context, MaterialPageRoute(builder: (context){
      //           return const QRV();
      //         }));
      //
      //       },
      //       child: Container(
      //         width: 139,
      //         height: 40,
      //         decoration: BoxDecoration(
      //           color: SColor,
      //           borderRadius: BorderRadius.circular(20)
      //         ),
      //         child: const Center(
      //           child: Text('امسح الكود',style: TextStyle(
      //             fontFamily: 'Inter',
      //             fontWeight:FontWeight.w600,
      //             fontSize: 16,
      //             color: PColor
      //           ),),
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
