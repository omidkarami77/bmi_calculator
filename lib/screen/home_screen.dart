import 'package:bmi_calculator/widgets/background_shape_left.dart';
import 'package:bmi_calculator/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

import '../constant/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightController = TextEditingController();
  final highController = TextEditingController();

  double resultBMI = 0;
  String resultText = '';
    double widthGood =100;
    double widthBad = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "تو چنده bmi",
          style: TextStyle(color: black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 130,
                child: TextField(
                  controller: weightController,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: orangeBackground,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'وزن',
                    hintStyle: TextStyle(
                      color: orangeBackground.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              Container(
                width: 130,
                child: TextField(
                  controller: highController,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: orangeBackground,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'قد',
                    hintStyle: TextStyle(
                      color: orangeBackground.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Text('قد خود را به اعشار وارد کنید مثال(1.82)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              var weight = double.parse(weightController.text);
              var height = double.parse(highController.text);
              setState(
                () {
                  resultBMI = weight / (height * height);
                  if (resultBMI > 25) {
                    widthBad=270;
                    widthGood=50;
                    resultText = 'شما اضافه وزن دارید';
                  } else if (resultBMI >= 18.5 && resultBMI <= 25) {
                    resultText = 'وزن شما نرمال است';
                    widthBad=50;
                    widthGood=270;

                  } else {
                    resultText = 'وزن شما کمتر از حد نرمال است';
                    widthBad=10;
                    widthGood=10;
                  }
                },
              );
            },
            child: Text(
              "محاسبه کن",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "${resultBMI.toStringAsFixed(2)}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 64),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "${resultText}",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: orangeBackground),
          ),
          SizedBox(
            height: 28,
          ),
          RightShape(
            width: widthBad,
          ),
          SizedBox(
            height: 15,
          ),
          LeftShape(
            width: widthGood,
          ),

        ]),
      ),
    );
  }
}
