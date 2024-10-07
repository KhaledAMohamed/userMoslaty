// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:user_moslaty/Widgets/Const.dart';
import 'package:user_moslaty/Widgets/NavigationBar_C.dart';

import '../../Widgets/Item.dart';
import '../../Widgets/customApppar.dart';
import '../../Widgets/drawer.dart';


class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  State<FAQs> createState() => _FAQsState();
}
List<Item> _items = <Item>[
  Item(headerValue: 'السؤال الاول', expandedValue: 'Details for Item 1'),
  Item(headerValue: 'السؤال الثاني', expandedValue: 'Details for Item 2'),
  Item(headerValue: 'السؤال الثالث', expandedValue: 'Details for Item 3'),
];
class _FAQsState extends State<FAQs> {
  int currentPageIndex=0;
  GlobalKey<ScaffoldState> Scaffoldkey6 =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Scaffoldkey6,
        endDrawer: const Drawer(

shadowColor: SColor,
          surfaceTintColor: SColor,
          child: Drawer_Widget(),
        ),
        appBar:CustomAppBar(


        ),
      bottomNavigationBar:const NavigationBar_C(),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("Images/img_4.png"),
              SingleChildScrollView(
             child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
              setState(() {
               _items[index].isExpanded = !isExpanded;
    });
    },
    children: _items.map<ExpansionPanel>((Item item) {
    return ExpansionPanel(
    headerBuilder: (BuildContext context, bool isExpanded) {
    return ListTile(
    title: Text(item.headerValue,style: const TextStyle(
      fontWeight: FontWeight.w600,
      color: SColor,
      fontSize: 20,

    ),),
    );
    },
    body: Container(
      height: 20,
    child:  Text(item.expandedValue,style: const TextStyle(
      fontWeight: FontWeight.w600,
      color: SColor,
      fontSize: 20,

    ),),
    ),
      isExpanded: !item.isExpanded,
    );
    }).toList(),
    ),
    ),





            ],
          ),
        )


    );

  }
}
