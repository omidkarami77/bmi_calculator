import 'package:bmi_calculator/constant/constants.dart';
import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  double width;



  RightShape({this.width=0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("شاخص منفی"),
      SizedBox(width: 5,),
        Container(
          width: width,
          height: 40.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
              ),
              color: orangeBackground),
        ),
      ],
    );
  }
}
