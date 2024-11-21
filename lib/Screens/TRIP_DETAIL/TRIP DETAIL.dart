import 'package:flutter/material.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';
import 'package:user_moslaty/Widgets/customApppar.dart';
import 'package:user_moslaty/Widgets/drawer.dart';

import '../../Models/LineDetailsResponse.dart';
import '../../Networks/Api_manager/Api_manager.dart';
import '../../Widgets/Const.dart';
class TripDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LineDetailsResponse?>(
        future: ApiManager.lineDetails('2'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error: ${snapshot.error}');
            return const Center(child: Text("Error fetching data"));
          } else if (!snapshot.hasData || snapshot.data!.data == null) {
            return const Center(child: Text("No destinations available"));
          }
          var lineDetails = snapshot.data!.data!;
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
                   Center(
                    child: Text('${lineDetails.startingPoint!}-${lineDetails.endingPoint!}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: SColor,

                      ),),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(lineDetails.fees!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: SColor,

                          ),),
                        Text(lineDetails.numberStations!.toString(),
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
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: lineDetails.numberStations,
                    itemBuilder: (context,index){
                      return  Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                             Text(lineDetails.stations![index], style: TextStyle(
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
                      );
                    },

                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset("Images/traveldetails.png"),
                  SizedBox(
                    height: 30,
                  ),
                  Text('  مدة الرحلة : ${lineDetails.estimatedTime!.toString()} ساعات ', style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: SColor,
                      fontFamily: 'Inter'
                  ),),




                ],
              ),
            ),
          );
        }
    );
  }
}
