import 'package:bmi_calculator/screens/bmi_result.dart';
import 'package:bmi_calculator/screens/splash/processing.dart';
import 'package:bmi_calculator/util/text_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey[800],
        useMaterial3: true,
      ),
      home: Processing(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var weightController = TextEditingController();
  var heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text("BMI CALCULATOR",
              style: TextStyle(fontFamily: "SecularOne")),
        ),
        body: Center(
          child: SizedBox(
            width: 250,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                StyledTextField(
                    controller: weightController,
                    label: "Weight",
                    hint: "Enter your weight",
                    icon: Icons.line_weight_rounded),
                StyledTextField(
                    controller: heightController,
                    label: "Height (in feet)",
                    hint: "Enter your height in feet",
                    icon: Icons.height_outlined),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BmiResult(bmi: "0, Sorry you are too fat")));
                    },
                    child: Text(
                      "CALCULATE YOUR BMI",
                      style: TextStyle(fontFamily: "SecularOne"),
                    ))
              ],
            ),
          ),
        ));
  }
}
