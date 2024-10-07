import 'package:flutter/material.dart';
import 'package:user_moslaty/Screens/LienDeteils/Lien_deteils.dart';
import 'package:user_moslaty/Screens/home/Home_Page.dart';
import 'package:user_moslaty/Screens/travel%20details/travel_details.dart';
import 'package:user_moslaty/Widgets/Const.dart';

import '../Screens/TRIP_DETAIL/TRIP DETAIL.dart';
class NavigationBar_C extends StatefulWidget {
  const NavigationBar_C({Key? key}) : super(key: key);

  @override
  State<NavigationBar_C> createState() => _NavigationBar_CState();
}
class _NavigationBar_CState extends State<NavigationBar_C> {
  @override
int  currentPageIndex=1   ;

  Widget build(BuildContext context) {
    return   NavigationBar(
    onDestinationSelected: (int index) {
      setState(() {
        currentPageIndex=index;
        if(index==0){
          print(currentPageIndex);

          Navigator.push(context,
              MaterialPageRoute(builder: (context){
                return const Home_Page();
              }));
        }
        else if(index==1){


          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context){
                return const travel_details();
              }));
        }
        else{



          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context){
                return  Lien_Deteils();
              }));

        }

      });
    },
    indicatorColor: const Color(0xEF023047),
    backgroundColor: Colors.white,
    selectedIndex: currentPageIndex,
    destinations:  <Widget>[
    const NavigationDestination(

    selectedIcon: Icon(Icons.home,
    color: Colors.white,
    ),
    icon: Icon(Icons.home,
    color: SColor,
    ),
    label: 'الرئيسيه',
    ),

   NavigationDestination(
selectedIcon: Image.asset("Images/img_3.png",
    color: Colors.white,
    height: 24,
    width: 24,
    ) ,
    label: 'تتبع رحلتك',
     icon: Image.asset("Images/img_3.png",
color: SColor,
     height: 24,
     width: 24,
   ),
    ),
    NavigationDestination(
      selectedIcon:  Image.asset("Images/img_9.png",
    height: 24,
    width: 24,
        color: Colors.white,
    ),
    icon: Image.asset("Images/img_9.png",
    height: 24,
    width: 24,
    ),
    label: 'بيانات الخطوط',
    ),
    ],
    );
  }
}
