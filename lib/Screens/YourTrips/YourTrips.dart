import 'package:flutter/material.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';
import 'package:user_moslaty/Widgets/customApppar.dart';
import 'package:user_moslaty/Widgets/drawer.dart';

import '../../Widgets/Const.dart';
class YourTrips extends StatelessWidget {
  const YourTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: const NavigationBar_C(),
      endDrawer: const Drawer(
        child: Drawer_Widget(),
        
      ),
      body:   SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text("رحلاتك",
              textAlign: TextAlign.center
              ,style: TextStyle(
                fontFamily: 'Inter',
                color: SColor,
                fontWeight: FontWeight.w600,
                fontSize: 24
              ),),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
              children: [
                Text('مدة الرحلة: 20 دقيقة',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: SColor,
                    fontFamily: 'Inter'
                ),),
                Text("أسيوط",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: SColor,
                  fontFamily: 'Inter'
                ),),

              ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Text('26/نوفمبر/2023',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),
                  Text("الأجرة:10 جنيه",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('أبنوب',style: TextStyle(
                      fontSize: 20,
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
                  const Text('الأزهر (أسيوط)',style: TextStyle(
                      fontSize: 20,
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
              height: 2,
              width: double.infinity,
              color: SColor,
            ),




            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Text('مدة الرحلة: 40 دقيقة',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),
                  Text("القاهرة",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Text('26/نوفمبر/2023',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),
                  Text("الأجرة:80 جنيه",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('أبنوب',style: TextStyle(
                      fontSize: 20,
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
                  const Text('القاهرة',style: TextStyle(
                      fontSize: 20,
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
              height: 2,
              width: double.infinity,
              color: SColor,
            ),



            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Text('مدة الرحلة: 25 دقيقة',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),
                  Text("معبدة",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Text('26/نوفمبر/2023',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),
                  Text("الأجرة:20 جنيه",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('أبنوب',style: TextStyle(
                      fontSize: 20,
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
                  const Text('معبدة',style: TextStyle(
                      fontSize: 20,
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
              height: 2,
              width: double.infinity,
              color: SColor,
            ),





            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Text('مدة الرحلة: 30 دقيقة',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),
                  Text("عرب العوامر",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Text('26/نوفمبر/2023',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),
                  Text("الأجرة:80 جنيه",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('أبنوب',style: TextStyle(
                      fontSize: 20,
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
                  const Text('عرب العوامر',style: TextStyle(
                      fontSize: 20,
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
              height: 2,
              width: double.infinity,
              color: SColor,
            )
          ],
        ),
      ),
      
    );
  }
}
