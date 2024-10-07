

import 'package:flutter/material.dart';
import 'package:user_moslaty/Screens/LoginScreen/login_screen.dart';
import 'package:user_moslaty/Screens/QR_Code/QR_Code.dart';
import 'package:user_moslaty/Screens/Setting/setting.dart';
import 'package:user_moslaty/Widgets/Const.dart';

import '../Screens/FAQs/FAQs.dart';
import '../Screens/Profiel/Profile.dart';
import '../Screens/abuot us/Abuot_Us.dart';


class Drawer_Widget extends StatefulWidget {
  const Drawer_Widget({Key? key}) : super(key: key);

  @override
  State<Drawer_Widget> createState() => _Drawer_WidgetState();
}

class _Drawer_WidgetState extends State<Drawer_Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 200,
             padding: const EdgeInsets.only(top: 20.0),
                width: double.infinity,
                color:const Color(0xFF8ECAE6),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("Images/img_2.png")
                        )
                      ),

                    ),
                     const Text("أحمد عادل",style: TextStyle(
                      color: Color(0xFA023047),
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Inter',
                    ),),
                    const Text("0101050622",style: TextStyle(
                      color: Color(0xFA023047),
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Inter',
                    ),),
                  ],
                ),
              ),
              const MyDrawerList(),



            ],
          ),
        ),
      ),
    );
  }
}
class MyDrawerList  extends StatelessWidget {
  const MyDrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
        Container(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              maenList(id :1,icon:  Icons.account_circle,
                  text: 'حسابي'),
              Container(color:SColor,
                height:1,
                width: 300,
              ),

              maenList(id:2, icon: Icons.info,text: 'معلومات عنا'),
              Container(color:SColor,
              height:1,
              width: 300,
              ),
              maenList(id:3, icon:(Icons.settings),text: 'الاعدادات'),
              Container(color:SColor,
                height:1,
                width: 300,
              ),
              maenList(id:4, icon:(Icons.qr_code),text: 'امسح الكود'),
              Container(color:SColor,
                height:1,
                width: 300,
              ),
              maenList(id:5, icon:(Icons.question_answer),text: 'الاساله الشائعه'),
              Container(color:SColor,
                height:1,
                width: 300,
              ),



              maenList(id:7,icon:Icons.login_outlined, text: 'تسجيل خروج',),

            ],
          ),
        )
    );
  }
}
String id='help_page';
class maenList extends StatelessWidget {
   maenList({required this.id,
     required this.icon,required this.text});
  int id;
  IconData icon;
  String text;


  @override
  Widget build(BuildContext context) {
    return (
        Material(

          child: InkWell(
            onTap: () {
              if (id == 1) {
                Navigator.push(context, MaterialPageRoute(
                    builder:(context){
                      return(const profiel());
                    } ));
              }

              if (id == 2) {
                Navigator.push(context, MaterialPageRoute(
                    builder:(context){
                      return(const About_us());
                    } ));
              }
              if (id == 3) {
              Navigator.push(context, MaterialPageRoute(
                  builder:(context){
                    return(const Setting_Page());
                  } ));
              }
              else if (id == 4) {
                Navigator.push(context, MaterialPageRoute(
                    builder:(context){
                      return(const QR_Code());
                    } ));
              }
              else if (id == 5) {
                Navigator.push(context, MaterialPageRoute(
                    builder:(context){
                      return(const FAQs());
                    } ));
              }

              else if (id == 7) {
                Navigator.push(context, MaterialPageRoute(
                    builder:(context){
                      return(const LoginScreen());
                    } ));
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(child: Icon(icon,
                      size: 40,
                      color: const Color(0xFA023047)),
                    flex: 0,
                  ),
                  const SizedBox(width: 10,),
                  Expanded(child: Text(text, style: const TextStyle(
                    color: Color(0xFA023047),
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Inter',
                  )),
                    flex: 2,
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
