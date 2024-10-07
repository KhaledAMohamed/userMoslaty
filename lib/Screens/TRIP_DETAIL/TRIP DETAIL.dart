import 'package:flutter/material.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';
import 'package:user_moslaty/Widgets/customApppar.dart';
import 'package:user_moslaty/Widgets/drawer.dart';

import '../../Widgets/Const.dart';
class TripDetail extends StatelessWidget {
  const TripDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      endDrawer: const Drawer(
        child: Drawer_Widget(),
      ),
      bottomNavigationBar: const NavigationBar_C(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            const Center(
              child: Text("أبنوب-القاهرة",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: SColor,

                ),),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("80 جنيه",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: SColor,

                    ),),
                  Text("5 محطات",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: SColor,

                    ),),

                ],
              ),
            ),
            Container(
              height: 2,
              width: double.infinity,
              color: SColor,

            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('أبنوب',style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),
                  const SizedBox(width: 10,),
                  Image.asset('Images/img_5.png',
                    color: PColor,
                    height: 15,
                    width: 16,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('المنيا',style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),
                  const SizedBox(width: 10,),
                  Image.asset('Images/img_5.png',
                    color: PColor,
                    height: 15,
                    width: 16,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('بنى سويف',style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),
                  const SizedBox(width: 10,),
                  Image.asset('Images/img_5.png',
                    color: PColor,
                    height: 15,
                    width: 16,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('الجيزة (هرم)',style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),
                  const SizedBox(width: 10,),
                  Image.asset('Images/img_5.png',
                    color: PColor,
                    height: 15,
                    width: 16,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('المرج',style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),
                  const SizedBox(width: 10,),
                  Image.asset('Images/img_5.png',
                    color: PColor,
                    height: 15,
                    width: 16,
                  )
                ],
              ),
            ),
            Image.asset("Images/traveldetails.png"),


          ],
        ),
      ),
    );
  }
}
