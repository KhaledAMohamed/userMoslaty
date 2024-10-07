import 'package:flutter/material.dart';
import 'package:user_moslaty/Widgets/Const.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';
import 'package:user_moslaty/Widgets/drawer.dart';

import '../../Widgets/customApppar.dart';
import '../../Widgets/custom_textField.dart';
class travel_details extends StatelessWidget {
  const travel_details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return(Scaffold(
     appBar: CustomAppBar(),
     bottomNavigationBar: const NavigationBar_C(),
     endDrawer: const Drawer(
       child: Drawer_Widget(),
     ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           const SizedBox(height: 60,),
           Stack(
             alignment: Alignment.bottomCenter,
             children: [
               Image.asset("Images/traveldetails.png"),

               Center(
                 child: Container(
                   alignment: Alignment.center,
                   height: 56,
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
                   width: 196,
                   child: const Text("رحلة أسيوط - أبنوب"
                     ,style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.w600,
                     color: SColor,

                   ),),
                 ),
               )
             ],
           ),
           const SizedBox(height: 25,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(

                   alignment: Alignment.center,
                   height: 56,
                   decoration: const BoxDecoration(
                        boxShadow:[
                          BoxShadow(color: Colors.black54,
                              spreadRadius: 2,
                          blurRadius: 10
                          )
                        ] ,
                       color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(20))

                   ),
                   width: 96,
                   child:const Column(
                     children: [
                       Text("مدة الرحلة ",style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.w600,
                         fontFamily: 'Inter',
                         color: SColor,

                       ),),
                       Text("35 دقيقة تقريبا",style: TextStyle(
                         fontWeight: FontWeight.w500,
                         fontSize: 12,
                         fontFamily: 'Inter',
                         color: SColor,
                       ),)
                     ],
                   )


               ),
               Container(

                   alignment: Alignment.center,
                   height: 56,
                   decoration: const BoxDecoration(
                       boxShadow:[
                         BoxShadow(color: Colors.black54,
                             spreadRadius: 2,
                             blurRadius: 10
                         )
                       ] ,

                       color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(20))

                   ),
                   width: 96,
                   child:const Column(
                     children: [
                       Text("السائق",style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.w600,
                         fontFamily: 'Inter',
                         color: SColor,

                       ),),
                       Text("احمد اسماعيل",style: TextStyle(
                         fontWeight: FontWeight.w500,
                         fontSize: 12,
                         fontFamily: 'Inter',
                         color: SColor,
                       ),)
                     ],
                   )


               ),

               Container(

                 alignment: Alignment.center,
                 height: 56,
                 decoration: const BoxDecoration(
                     boxShadow:[
                       BoxShadow(color: Colors.black54,
                           spreadRadius: 2,
                           blurRadius: 10
                       )
                     ] ,

                     color: Colors.white,
                     borderRadius: BorderRadius.all(Radius.circular(20))

                 ),
                 width: 96,
                 child:const Column(
children: [
  Text("سعر الرحلة ",style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
    color: SColor,

  ),),
  Text("15 جنيها فقط",style: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    fontFamily: 'Inter',
    color: SColor,
  ),)
],
                 )


               ),
             ],
           ),
           const SizedBox(height: 30,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
           children: [

             Container(
             alignment: Alignment.centerRight,
             height: 32,
             width: 117,
             decoration: BoxDecoration(
                 borderRadius: const BorderRadius.all
                   (Radius.circular(10)),
                 color: SColor,
                 border: Border.all(color: Colors.black)
             ),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const Text('  مشاركة الرحلة  ',
                 style: TextStyle(
                   color: PColor,
                 ),
                 ),
                 Image.asset('Images/Sher.png',
                   height: 24,
                   width: 24,

                 )
               ],
             ),
           ),
             const SizedBox(width: 20,),
             Container(
               alignment: Alignment.center,
               height: 36,
               decoration: const BoxDecoration(
                   color:PColor,
                   borderRadius: BorderRadius.all(
                       Radius.circular(10))

               ),
               width: 46,
               child: const Text("أبدأ",style: TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.w600,
                 color: SColor,

               ),),
             ),

           ],
           ),
           SizedBox(height: 25,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children:
           [

             Column(
               children: [
                 Text("أسيوط",
                   style: TextStyle(
                       fontSize: 16,
                       color: SColor,
                       fontWeight: FontWeight.w600,
                       fontFamily: 'Inter'
                   ),),
                 Image.asset("Images/img_5.png",
                   width: 14,
                   height: 14,
                 )
               ],
             ),
             Column(
               children: [
                 Text("الجسر",
                   style: TextStyle(
                       fontSize: 16,
                       color: SColor,
                       fontWeight: FontWeight.w600,
                       fontFamily: 'Inter'
                   ),),
                 Image.asset("Images/img_5.png",
                   width: 14,
                   height: 14,
                 )
               ],
             ),
             Column(
               children: [
                 Text("بنى مزار",
                   style: TextStyle(
                       fontSize: 16,
                       color: SColor,
                       fontWeight: FontWeight.w600,
                       fontFamily: 'Inter'
                   ),),
                 Image.asset("Images/img_5.png",
                   width: 14,
                   height: 14,
                 )
               ],
             ),
             Column(
               children: [
                 Text("الحمام",
                   style: TextStyle(
                       fontSize: 16,
                       color: SColor,
                       fontWeight: FontWeight.w600,
                       fontFamily: 'Inter'
                   ),),
                 Image.asset("Images/img_5.png",
                   width: 14,
                   height: 14,
                 )
               ],
             ),
             Column(
               children: [
                 Text("أبنوب",
                 style: TextStyle(
                   fontSize: 16,
                   color: SColor,
                   fontWeight: FontWeight.w600,
                   fontFamily: 'Inter'
                 ),),
                 Image.asset("Images/img_5.png",
                 width: 14,
                   height: 14,
                 )
               ],
             )
           ],)


         ],
         
       ),
     ),
   )
   );
  }
}
