import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  double width;

  LeftShape({Key? key, this.width = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 40.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
              color: Colors.green),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "شاخص مثبت",
          style: TextStyle(color: Colors.green),
        ),

      ],
    );
  }
}
