import 'package:flutter/material.dart';

class StyledTextField extends StatelessWidget {
  var controller;
  var label;
  var hint;
  IconData? icon;

  StyledTextField(
      {required this.controller,
      required this.label,
      required this.hint,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hint,
        label: Text(
          label,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontFamily: "Geologica",
              fontWeight: FontWeight.bold),
        ),
        prefixIcon: Icon(icon),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).primaryColor, width: 2)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12, width: 2.0),
        ),
      ),
    );
  }
}
