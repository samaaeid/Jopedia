import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget DefaultButton({
  double width = double.infinity ,
  Color background = Colors.blue,
  double rad = 0.0,
  required Function function,
  required String text,
}) => Container(
  width: width,
  decoration: BoxDecoration(
    color: background,
    borderRadius: BorderRadius.circular(10.0),
  ) ,
  child: MaterialButton(
    onPressed: function(),
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
    ),

  ),
);