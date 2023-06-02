import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  var bmi;

  BmiResult({required this.bmi});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Intro"),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.all(25.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Center(
              child: Container(
                child: Text(
                  "Your BMI is $bmi",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "SecularOne",
                      color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          ),
        ));
  }
}
