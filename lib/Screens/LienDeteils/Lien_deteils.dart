// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:user_moslaty/Widgets/Const.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';
import 'package:user_moslaty/Widgets/customApppar.dart';
import 'package:user_moslaty/Widgets/drawer.dart';

import '../TRIP_DETAIL/TRIP DETAIL.dart';
class Lien_Deteils extends StatefulWidget {

  @override
  State<Lien_Deteils> createState() => _Lien_DeteilsState();
}

class _Lien_DeteilsState extends State<Lien_Deteils> {
  String? text;

 Color color1 =SColor;

  Color  color2 =PColor;

  @override
  Widget build(BuildContext context) {
    setState((){
      text='غير متاح';
      if(text =="غير متاح"){
        color2 =const Color(0xFF8E5806);
        color1=const Color(0xFF8E5806);
      }
      else
      {
        color1 =SColor;
        color2 =PColor;
      }
    });

    return (
    Scaffold(
      appBar: CustomAppBar(),
      endDrawer: const Drawer(
        child: Drawer_Widget(),
      ),
      bottomNavigationBar: const NavigationBar_C(),
      body:  SingleChildScrollView(
        child: Column(
          children: [
         const Center(
           child: Text("بيانات الخطوط ",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: SColor,

              ),),
         ),
            Container(

           margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius:const BorderRadius.all(Radius.circular(20)),
                border: Border.all(width: 2,color: SColor)
              ),
              height:  152,
              width: 398,
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      const Text('مدة الرحلة: 40 دقيقة',style:
                      TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: SColor,
                          fontFamily: 'Inet'

                      ),),
                      Text('القاهره',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: color1,
                          fontFamily: 'Inet'

                      ),),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text('عدد المحطات:10',style:
                      TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: SColor,
                          fontFamily: 'Inet'

                      ),),
                      Text('الأجرة:80 جنيه',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: SColor,
                          fontFamily: 'Inet'

                      ),),
                    ],
                  ),
                  Row(
mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context){
                                return(const TripDetail());
                              }));
                        },
                        child: Container(

                          decoration: const BoxDecoration(

                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: SColor,




                          ),
                          height: 44,
                          width: 175,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,


                            children: [
                               Image.asset('Images/img_7.png',
                               width: 12,
                                 height: 12,
                               ),
                              const SizedBox(width: 5,),
                              const Text('مزيد من التفاصيل',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: PColor,
                                  fontFamily: 'Inet'

                              ),),
                            ],
                          ),

                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 44,
                        width: 65,
                        decoration: const BoxDecoration(
                          color: PColor,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Text('متاح',style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: SColor,
                            fontFamily: 'Inet'

                        ),textAlign: TextAlign.center,),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(

              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius:const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(width: 2,color: SColor)
              ),
              height:  152,
              width: 398,
              child: Column(
                children: [

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text('مدة الرحلة: 20 دقيقة',style:
                      TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: SColor,
                          fontFamily: 'Inet'

                      ),),
                      Text('أسيوط',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: SColor,
                          fontFamily: 'Inet'

                      ),),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text('عدد المحطات: 7',style:
                      TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: SColor,
                          fontFamily: 'Inet'

                      ),),
                      Text('الأجرة:10 جنيه',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: SColor,
                          fontFamily: 'Inet'

                      ),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context){
                                return(const TripDetail());
                              }));
                        },
                        child: Container(

                          decoration: const BoxDecoration(

                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: SColor,




                          ),
                          height: 44,
                          width: 175,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,


                            children: [
                              Image.asset('Images/img_7.png',
                                width: 12,
                                height: 12,
                              ),
                              const SizedBox(width: 5,),
                              const Text('مزيد من التفاصيل',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: PColor,
                                  fontFamily: 'Inet'

                              ),),
                            ],
                          ),

                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 44,
                        width: 65,
                        decoration: const BoxDecoration(
                          color: PColor,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Text('متاح',style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color:SColor,
                            fontFamily: 'Inet'

                        ),textAlign: TextAlign.center,),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(

              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius:const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(width: 2,color: color1)
              ),
              height:  152,
              width: 398,
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text('مدة الرحلة: 20 دقيقة',style:
                      TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: color1,
                          fontFamily: 'Inet'

                      ),),
                      Text('أسيوط',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: color1,
                          fontFamily: 'Inet'

                      ),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text('عدد المحطات: 7',style:
                      TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: color1,
                          fontFamily: 'Inet'

                      ),),
                      Text('الأجرة:10 جنيه',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: color1,
                          fontFamily: 'Inet'

                      ),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context){
                                return(const TripDetail());
                              }));
                        },
                        child: Container(

                          decoration: const BoxDecoration(

                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: SColor,




                          ),
                          height: 44,
                          width: 175,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,


                            children: [
                              Image.asset('Images/img_7.png',
                                width: 12,
                                height: 12,
                              ),
                              const SizedBox(width: 5,),
                              const Text('مزيد من التفاصيل',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: PColor,
                                  fontFamily: 'Inet'

                              ),),
                            ],
                          ),

                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 44,
                        width: 75,
                        decoration:  BoxDecoration(
                          color:color2!,
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Text(text!,style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontFamily: 'Inet'

                        ),textAlign: TextAlign.center,),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(

              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius:const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(width: 2,color: SColor)
              ),
              height:  152,
              width: 398,
              child: Column(
                children: [

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text('مدة الرحلة: 20 دقيقة',style:
                      TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: SColor,
                          fontFamily: 'Inet'

                      ),),
                      Text('أسيوط',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: SColor,
                          fontFamily: 'Inet'

                      ),),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text('عدد المحطات: 7',style:
                      TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: SColor,
                          fontFamily: 'Inet'

                      ),),
                      Text('الأجرة:10 جنيه',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: SColor,
                          fontFamily: 'Inet'

                      ),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context){
                                return(const TripDetail());
                              }));
                        },
                        child: Container(

                          decoration: const BoxDecoration(

                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: SColor,




                          ),
                          height: 44,
                          width: 175,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,


                            children: [
                              Image.asset('Images/img_7.png',
                                width: 12,
                                height: 12,
                              ),
                              const SizedBox(width: 5,),
                              const Text('مزيد من التفاصيل',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: PColor,
                                  fontFamily: 'Inet'

                              ),),
                            ],
                          ),

                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 44,
                        width: 65,
                        decoration: const BoxDecoration(
                          color: PColor,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Text('متاح',style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: SColor,
                            fontFamily: 'Inet'

                        ),textAlign: TextAlign.center,),
                      )
                    ],
                  )
                ],
              ),
            ),





          ],
        ),
      ),
    )
    );
  }
}
