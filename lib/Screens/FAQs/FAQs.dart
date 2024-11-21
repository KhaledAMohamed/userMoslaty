// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:user_moslaty/Models/showAllQandAResponse.dart';
import 'package:user_moslaty/Networks/Api_manager/Api_manager.dart';
import 'package:user_moslaty/Widgets/Const.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';
import '../../Widgets/customApppar.dart';
import '../../Widgets/drawer.dart';

class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  int currentPageIndex = 0;
  GlobalKey<ScaffoldState> Scaffoldkey6 = GlobalKey<ScaffoldState>();
  List<bool>? _expandedStates;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Scaffoldkey6,
      endDrawer: const Drawer(
        shadowColor: SColor,
        surfaceTintColor: SColor,
        child: Drawer_Widget(),
      ),
      appBar: CustomAppBar(),
      bottomNavigationBar: const NavigationBar_C(),
      body: FutureBuilder<ShowFAQsResponse?>(
        future: ApiManager.showFAQs(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.data == null) {
            return const Center(child: Text('No FAQs available'));
          }

          var faqItems = snapshot.data!.data!;
          _expandedStates ??= List<bool>.filled(faqItems.length, false);

          return SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("Images/img_4.png"),
                ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      _expandedStates![index] = !_expandedStates![index];
                    });
                  },
                  children: faqItems.asMap().entries.map<ExpansionPanel>((entry) {
                    int index = entry.key;
                    Data item = entry.value;

                    return ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(
                            item.question ?? '',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          item.answer ?? '',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      isExpanded: _expandedStates![index],
                    );
                  }).toList(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

