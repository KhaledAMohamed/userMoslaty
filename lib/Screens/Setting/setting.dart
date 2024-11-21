import 'package:flutter/material.dart';
import 'package:user_moslaty/Screens/FAQs/FAQs.dart';
import 'package:user_moslaty/Screens/Splash%20Screen2/Splash_Screen2.dart';
import 'package:user_moslaty/Screens/SplashScreen/Splash_Screen.dart';
import 'package:user_moslaty/Widgets/Const.dart';
import '../../Widgets/CustomButon.dart';
import '../../Widgets/NavigationBar_C.dart';
import '../../Widgets/customApppar.dart';
import '../../Widgets/drawer.dart';
import '../LinesData/Lines_data.dart';
import '../YourTrips/YourTrips.dart';
import '../about us/About_Us.dart';
class Setting_Page extends StatelessWidget {
  const Setting_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        endDrawer: const Drawer(


          child: Drawer_Widget(),
        ),
        appBar:CustomAppBar(


        ),
        bottomNavigationBar:const NavigationBar_C(),

        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 5,),
               const Text('الاعدادات',
               style: TextStyle(
                 fontSize: 25,
                 color: SColor,
                 fontWeight: FontWeight.w600
               ),
               ),

              CustomButon1(
                ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return(const YourTrips());
                  }));
                },
                width: 379,
                hight: 50,
                text: "رحلاتك",
                color: PColor,
                colorText: SColor,
              ),

              CustomButon1(
                width: 379,
                hight: 50,
                text: "بحث عن رحلة",
                color: PColor,
                colorText: SColor,
              ),

              CustomButon1(
                ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return( Lines_Data());
                  }));

                },
                width: 379,
                hight: 50,
                text: "بيانات الخطوط",
                color: PColor,
                colorText: SColor,
              ),

              CustomButon1(
                ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return(const About_us ());
                  }));
                },
                width: 379,
                hight: 50,
                text: "نبذة عن الشركة",
                color: PColor,
                colorText: SColor,
              ),


              CustomButon1(
                ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return(const FAQs());
                  }));
                },
                width: 379,
                hight: 50,
                text: "الاسئلة الشائعة",
                color: PColor,
                colorText: SColor,
              ),

              CustomButon1(
                ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return(const Splash_Screen2());
                  }));
                },
                width: 379,
                hight: 50,
                text: "بنود و أحكام",
                color: PColor,
                colorText: SColor,
              ),

              CustomButon1(
                ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return(const Splash_Screen());
                  }));
                },
                width: 379,
                hight: 50,
                text: "الشروط و الخصوصية",
                color: PColor,
                colorText: SColor,
              ),





            ],
          ),
        )

    );
  }
}
