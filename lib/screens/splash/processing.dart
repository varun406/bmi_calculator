import 'dart:async';

import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/screens/bmi_result.dart';
import 'package:flutter/material.dart';

class Processing extends StatefulWidget {
  @override
  State<Processing> createState() => _ProcessingState();
}

class _ProcessingState extends State<Processing> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Center(
          child: Container(
              width: 250,
              height: 250,
              child: const ClipRRect(
                child: CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2020/11/27/12/59/woman-5781862_1280.jpg"),
                ),
              )),
        ));
  }
}
