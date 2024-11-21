import 'package:flutter/material.dart';

import 'Const.dart';

class CurrentLines extends StatelessWidget{
  var currentLineList;
  int index;
  CurrentLines({required this.currentLineList, required this.index});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'Images/CarIcon.png',
                height: 19,
                width: 80,
              ),
              Text(
                currentLineList[index].carNumber!,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: SColor,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                currentLineList[index].startingPoint!,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: SColor,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(500)),
                  color: Colors.white,
                  border: Border.all(color: SColor, width: 1),
                ),
                height: 24,
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Text(
               '  يصل بعد ${currentLineList[index].estimatedTime!}دقيقه تقريبا   ',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: SColor,
                ),
              ),
              const SizedBox(
                width: 27,
              ),
              Text(
                currentLineList[index].endingPoint!,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: SColor,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(500)),
                  color: SColor,
                  border: Border.all(color: SColor, width: 1),
                ),
                height: 24,
                width: 24,
              ),
            ],
          ),
        )
      ],
    );
  }

}