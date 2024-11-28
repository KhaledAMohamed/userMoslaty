import 'package:flutter/material.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';
import 'package:user_moslaty/Widgets/customApppar.dart';

import '../../Models/GetInfoResponse.dart';
import '../../Networks/Api_manager/Api_manager.dart';
import '../../Widgets/drawer.dart';

class About_us extends StatefulWidget {
  const About_us({Key? key}) : super(key: key);

  @override
  State<About_us> createState() => _About_usState();
}

class _About_usState extends State<About_us> {
  @override
  int currentPageIndex = 0;
  GlobalKey<ScaffoldState> Scaffoldkey2 = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<GetInfoResponse?>(
        future: ApiManager.getInfo(1.toString()),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error: ${snapshot.error}');
            return const Center(child: Text("Error fetching Info"));
          } else if (!snapshot.hasData) {
            return const Center(child: Text("No Info available"));
          }
          var info = snapshot.data;
          return Scaffold(
              appBar: CustomAppBar(),
              key: Scaffoldkey2,
              endDrawer: const Drawer(
                child: Drawer_Widget(),
              ),
              bottomNavigationBar: const NavigationBar_C(),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Center(
                    child: Text(
                      'نبذة عن الشركة',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF023047),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Image.asset(
                      "Images/img_8.png",
                      height: 131,
                      width: 321,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                   Text(
                    info!.data!.firstSection!,
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF023047),
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: const Color(0xff8ecae6),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    ' أهدافنا',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Color(0xFF023047),
                      fontFamily: 'inter',
                    ),
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    info.data!.secondSection!,
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF023047),
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.end,
                  ),

                ],
              ));
        });
  }
}
