import 'package:flutter/material.dart';
import 'package:user_moslaty/Screens/YourTrips/YourTrips.dart';
import 'package:user_moslaty/Screens/travel%20details/travel_details.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';
import 'package:user_moslaty/Widgets/custom_textField.dart';
import 'package:user_moslaty/Widgets/drawer.dart';

import '../../Widgets/Const.dart';
import '../../Widgets/customApppar.dart';
import '../TRIP_DETAIL/TRIP DETAIL.dart';
class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(),
      bottomNavigationBar:const NavigationBar_C(),
      endDrawer:const Drawer(child: Drawer_Widget()),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 20,),
            Center(
              child: CustomTextField(
                height: 46,
width: 300,
hintText: 'بحث عن رحلة',
                icon: Icons.search,
              ),
            ),
    Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: const Text("اختر وجهة الرحلة ",
        textAlign: TextAlign.end,
        style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: SColor,)),
    ),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                 Image.asset("Images/img_6.png",
                 height: 266,
                 width: 224,
               ),

                      Center(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const TripDetail();
                            }));
                          },
                          child: Container(
                            alignment: Alignment.center,

                            height: 44,
                            decoration: const BoxDecoration(

                                color: Colors.white,
                                boxShadow:[
                                  BoxShadow(color: Colors.black54,
                                      spreadRadius: 2,
                                      blurRadius: 10
                                  )
                                ] ,
                                borderRadius: BorderRadius.all(Radius.circular(20))

                            ),
                            margin: const EdgeInsets.symmetric(
                                vertical: 20),
                            width: 188,
                            child: const Text("القاهره"
                              ,style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: SColor,

                              ),),
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset("Images/img_6.png",
                        height: 266,
                        width: 224,
                      ),

                      Center(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const TripDetail();
                            }));
                          },
                          child: Container(
                            alignment: Alignment.center,

                            height: 44,
                            decoration: const BoxDecoration(

                                color: Colors.white,
                                boxShadow:[
                                  BoxShadow(color: Colors.black54,
                                      spreadRadius: 2,
                                      blurRadius: 10
                                  )
                                ] ,
                                borderRadius: BorderRadius.all(Radius.circular(20))

                            ),
                            margin: const EdgeInsets.symmetric(
                                vertical: 20),
                            width: 188,
                            child: const Text("القاهره"
                              ,style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: SColor,

                              ),),
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset("Images/img_6.png",
                        height: 266,
                        width: 224,
                      ),

                      Center(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const TripDetail();
                            }));
                          },
                          child: Container(
                            alignment: Alignment.center,

                            height: 44,
                            decoration: const BoxDecoration(

                                color: Colors.white,
                                boxShadow:[
                                  BoxShadow(color: Colors.black54,
                                      spreadRadius: 2,
                                      blurRadius: 10
                                  )
                                ] ,
                                borderRadius: BorderRadius.all(Radius.circular(20))

                            ),
                            margin: const EdgeInsets.symmetric(
                                vertical: 20),
                            width: 188,
                            child: const Text("القاهره"
                              ,style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: SColor,

                              ),),
                          ),
                        ),
                      )
                    ],
                  ),

                  
                ],
            ),
             ),
            const SizedBox(height: 40,),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return const YourTrips();

                }));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text("رحلاتك الحالية ",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: SColor,)),
              ),
            ),
             Container(
               margin: const EdgeInsets.symmetric(horizontal: 20),

               child: Row(
                 children: [

                   Image.asset('Images/CarIcon.png',
                   height: 19,
                   width: 19,
                   ),
                  const Text("   KHL982 سيارة رقم   "
                    ,style: TextStyle(
                     fontFamily: 'Inter',
                     fontWeight: FontWeight.w500,
                     fontSize: 16,
                    color: SColor,

                   ),),
                   const SizedBox(width: 30,),
                   const Text("محطة أبنوب",
                       textAlign: TextAlign.end,
                       style: TextStyle(
                         fontSize: 24,
                         fontWeight: FontWeight.w600,
                         color: SColor,)),
                   Container(
                     margin: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(500)),
                       color: Colors.white,
                       border: Border.all(color: SColor,width: 1)
                     ),
                     height: 24,
                     width: 24,
                   )


                 ],
               ),
             ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),

              child: Row(
                children: [



                  const Text("  يصل بعد 15 دقيقة تقريبا"
                    ,style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: SColor,

                    ),),
                  const SizedBox(width: 27,),
                  const Text("محطة أسيوط",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: SColor,)),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(500)),
                        color: SColor,
                        border: Border.all(color: SColor,width: 1)
                    ),
                    height: 24,
                    width: 24,
                  )


                ],
              ),
            ),



          ],

        ),
      ),
    );
  }
}
