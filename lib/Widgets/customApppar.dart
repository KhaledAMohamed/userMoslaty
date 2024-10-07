import 'package:flutter/material.dart';
import 'package:user_moslaty/Widgets/Const.dart';

import '../Screens/Profiel/Profile.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
    actions: <Widget>[
    IconButton(
    icon: const Icon(Icons.menu,color: SColor,size: 44,), // End drawer icon
    onPressed: () {
    Scaffold.of(context).openEndDrawer(); // Open end drawer when icon is tapped
    },
    ),],
    toolbarHeight: 150,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20), // Adjust the radius as needed
        ),
      ),

      title: Image.asset("Images/AppIcon.jpg",
        width:72,

      ),
      centerTitle: true,

      backgroundColor: PColor,
      leading: GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context){
                return(const profiel());
              }));
        },
        child: const Icon(  Icons.account_circle,
          size: 44,
          color: SColor,
        ),
      ),

    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(114);
}