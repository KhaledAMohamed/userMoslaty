import 'package:flutter/material.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';
import 'package:user_moslaty/Widgets/customApppar.dart';
import 'package:user_moslaty/Widgets/drawer.dart';

import '../../Widgets/CustomButon.dart';
class profiel extends StatelessWidget {
  const profiel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      endDrawer: Drawer(
        child: Drawer_Widget(),

      ),
      bottomNavigationBar: NavigationBar_C(),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Image.asset("Images/img_2.png",
              height: 96,
              width: 96,
            ),
            GestureDetector(
              onTap: (){},
              child: const Text(" تغير صورة الغلاف",
                style: TextStyle(
                  color: Color(0xFA023047),
                  fontSize: 16,

                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            const SizedBox(height: 30,),
            const Text("أحمد عادل",style: TextStyle(
              color: Color(0xFA023047),
              fontSize: 25,
              fontWeight: FontWeight.w900,
              fontFamily: 'Inter',
            ),),

            Container(
              decoration: const BoxDecoration( color:Color (0xff8ecae6),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 80,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: const Text(" تاريخ تسجيل الدخول: 13/12/2023  ",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Color(0xFA023047),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                ),
              ),
            ),



            Container(
              decoration: const BoxDecoration( color:Color (0xff8ecae6),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 90,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.end ,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: const Text(" تغير رقم الهاتف",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,

                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      const Text("  رقم الهاتف   ",
                        style: TextStyle(
                          color: Color(0xFA023047),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),

                    ],
                  ),
                  const Text("      0100002652                       ",
                    style: TextStyle(
                      color: Color(0xFA023047),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),


            Container(
              decoration: const BoxDecoration( color:Color (0xff8ecae6),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 90,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.end ,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: const Text(" تغير كلمة المرور",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,

                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      const Text("  كلمة المرور   ",
                        style: TextStyle(
                          color: Color(0xFA023047),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),

                    ],
                  ),
                  const Text("###########",
                    style: TextStyle(
                      color: Color(0xFA023047),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),


            Container(
              decoration: const BoxDecoration( color:Color (0xff8ecae6),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 95,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: const Text(" تغير محل الاقامه",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,

                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      const Text("  محل الاقامه   ",
                        style: TextStyle(
                          color: Color(0xFA023047),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),

                    ],
                  ),
                  const Text("           الحصري      ",
                    style: TextStyle(
                      color: Color(0xFA023047),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),
            CustomButon(
              width: 144,
              hight: 60,
              color:const Color(0xFA023047) ,
              colorText:Colors.white ,
              text:"حفظ" ,

            )



          ],
        ),
      ),
    );
  }
}
