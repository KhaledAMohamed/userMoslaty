import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_moslaty/Models/TripsHistoryResponse.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';
import 'package:user_moslaty/Widgets/TripsContainer.dart';
import 'package:user_moslaty/Widgets/customApppar.dart';
import 'package:user_moslaty/Widgets/drawer.dart';

import '../../Networks/Api_manager/Api_manager.dart';
import '../../Provider/AppConfigProvider.dart';
import '../../Widgets/Const.dart';
class YourTrips extends StatelessWidget {
  const YourTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppConfigProvider>(context);

    return FutureBuilder<TripsHistoryResponse?>(
        future: ApiManager.tripsHistory(provider.userId!),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error: ${snapshot.error}');
            return const Center(child: Text("Error fetching data"));
          } else if (!snapshot.hasData || snapshot.data!.data == null) {
            return const Center(child: Text("No destinations available"));
          }
          final tripsHistoryList = snapshot.data!.data;
          return Scaffold(
            appBar: CustomAppBar(),
            bottomNavigationBar: const NavigationBar_C(),
            endDrawer: const Drawer(
              child: Drawer_Widget(),

            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const Center(
                    child: Text("رحلاتك",
                      textAlign: TextAlign.center
                      , style: TextStyle(
                          fontFamily: 'Inter',
                          color: SColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 24
                      ),),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: tripsHistoryList!.length ,
                      itemBuilder: (context,index){
                        return Column(
                          children: [
                            Container(
                              margin:  EdgeInsets.symmetric(horizontal: 20),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('مدة الرحلة: ${tripsHistoryList[index].estimatedTime} دقيقة', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: SColor,
                                      fontFamily: 'Inter'
                                  ),),
                                  Text(tripsHistoryList[index].lineName!, style: TextStyle(
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
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(tripsHistoryList[index].createdAt, style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: SColor,
                                      fontFamily: 'Inter'
                                  ),),
                                  Text("الأجرة:${tripsHistoryList[index].fees} جنيه", style: TextStyle(
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
                                  Text(tripsHistoryList[index].startingPoint!, style: TextStyle(
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
                                  Text(tripsHistoryList[index].endingPoint!, style: TextStyle(
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
                          ],
                        );

                      })


                ],
              ),
            ),

          );
        }
    );
  }
}
