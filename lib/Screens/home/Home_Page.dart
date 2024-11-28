import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_moslaty/Models/HomeResponse.dart';
import 'package:user_moslaty/Networks/Api_manager/Api_manager.dart';
import 'package:user_moslaty/Provider/AppConfigProvider.dart';
import 'package:user_moslaty/Screens/LoginScreen/login_screen.dart';
import 'package:user_moslaty/Screens/YourTrips/YourTrips.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';
import 'package:user_moslaty/Widgets/current_line.dart';
import 'package:user_moslaty/Widgets/custom_textField.dart';
import 'package:user_moslaty/Widgets/drawer.dart';
import '../../Widgets/Const.dart';
import '../../Widgets/customApppar.dart';
import '../TRIP_DETAIL/TRIP DETAIL.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppConfigProvider>(context);

    return  Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: const NavigationBar_C(),
      endDrawer: const Drawer(child: Drawer_Widget()),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 20,
            ),
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
              child:  Text(
                 "اختر وجهة الرحلة ",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: SColor,
                ),
              ),
            ),
            FutureBuilder<HomeResponse?>(
              future: ApiManager.homePage(provider.userId!),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  print('Error: ${snapshot.error}');
                  return const Center(child: Text("Error fetching data"));
                } else if (!snapshot.hasData || snapshot.data!.data == null) {
                  return const Center(child: Text("No destinations available"));
                }
                var linesList = snapshot.data!.data!.lines;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 3 / 4,
                    ),
                    itemCount: linesList!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TripDetail(lineId: linesList[index].lineId!,)),
                          );
                        },
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset(
                              "Images/img_6.png",
                              height: 300,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 44,
                              width: 160,
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                  ),
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    linesList[index].fees ?? '',
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    linesList[index].lineName ?? '',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 10,),



                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) {
                  return const YourTrips();
                }));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "رحلاتك الحالية ",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: SColor,
                  ),
                ),
              ),
            ),
            FutureBuilder<HomeResponse?>(
              future: ApiManager.homePage(provider.userId!),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  print('Error: ${snapshot.error}');
                  return const Center(child: Text("Error fetching data"));
                } else if (!snapshot.hasData || snapshot.data!.data == null) {
                  return const Center(child: Text("No destinations available"));
                }
                var currentLineList = snapshot.data!.data!.currentLine;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: currentLineList!.length,
                    itemBuilder: (context, index) {
                      return CurrentLines(currentLineList: currentLineList, index: index);
                    },
                  ),
                );
              },
            ),



          ],
        ),
      ),
    ) ;
  }
}
