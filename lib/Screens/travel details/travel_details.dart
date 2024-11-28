import 'package:flutter/material.dart';
import 'package:user_moslaty/Widgets/Const.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';
import 'package:user_moslaty/Widgets/drawer.dart';
import '../../Models/TrackingLineResponse.dart';
import '../../Networks/Api_manager/Api_manager.dart';
import '../../Widgets/customApppar.dart';

class travel_details extends StatelessWidget {
  const travel_details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<TrackingLineResponse?>(
        future: ApiManager.trackYourTrip(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error: ${snapshot.error}');
            return const Center(child: Text("Error fetching data"));
          } else if (!snapshot.hasData || snapshot.data!.data == null) {
            return const Center(child: Text("No trip available"));
          }
          var tripDetails = snapshot.data!.data!;
          return Scaffold(
            appBar: CustomAppBar(),
            bottomNavigationBar: const NavigationBar_C(),
            endDrawer: const Drawer(
              child: Drawer_Widget(),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
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
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    spreadRadius: 2,
                                    blurRadius: 10)
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(
                                  20))),
                          width: 196,
                          child:  Text(
                            "رحلة ${tripDetails.startingPoint = tripDetails.endingPoint}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: SColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    spreadRadius: 2,
                                    blurRadius: 10)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(20))),
                          width: 96,
                          child:  Column(
                            children: [
                              Text(
                                "مدة الرحلة  ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  color: SColor,
                                ),
                              ),
                              Text(
                                "${tripDetails.estimatedTime}  دقيقة تقريبا ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  color: SColor,
                                ),
                              )
                            ],
                          )),
                      Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    spreadRadius: 2,
                                    blurRadius: 10)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(20))),
                          width: 96,
                          child:  Column(
                            children: [
                              Text(
                                "السائق",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  color: SColor,
                                ),
                              ),
                              Text(
                              tripDetails.driverName!,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  color: SColor,
                                ),
                              )
                            ],
                          )),
                      Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    spreadRadius: 2,
                                    blurRadius: 10)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(20))),
                          width: 96,
                          child:  Column(
                            children: [
                              Text(
                                "سعر الرحلة ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  color: SColor,
                                ),
                              ),
                              Text(
                                " ${tripDetails.fees}  جنيها فقط ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  color: SColor,
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        height: 32,
                        width: 117,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(10)),
                            color: SColor,
                            border: Border.all(color: Colors.black)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '  مشاركة الرحلة  ',
                              style: TextStyle(
                                color: PColor,
                              ),
                            ),
                            Image.asset(
                              'Images/Sher.png',
                              height: 24,
                              width: 24,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 36,
                        decoration: const BoxDecoration(
                            color: PColor,
                            borderRadius: BorderRadius.all(
                                Radius.circular(10))),
                        width: 46,
                        child: const Text(
                          "أبدأ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: SColor,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    " المحطات ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: SColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: GridView.builder(
                          itemCount: tripDetails.numberStations,
                         shrinkWrap: true,
                         physics: const NeverScrollableScrollPhysics(),
                         gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: tripDetails.numberStations!,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 10,
                        ),
                            itemBuilder: (context,index){
                                 return Column(
                                children: [
                                  Text(
                                    tripDetails.stations![index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: SColor,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Inter'),
                                  ),
                                  Image.asset(
                                    "Images/img_5.png",
                                    width: 14,
                                    height: 14,
                                  )
                                ],
                              );
                        }),
                      )

                    ],
                  ),
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       backgroundColor: PColor,
                     ),
                      onPressed: (){},
                      child: Text(
                        " انهاء الرحلة ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: SColor,
                        ),
                      ),

                  )
                ],
              ),
            ),
          );
        }
    );
  }
}
