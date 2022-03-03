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

Widget DefaultTextField({
  required controller,
  hint = '',
  required type,
  required Function onType,
  isPassword = false,
  SuffixIcon,
  PrefixIcon,

}) => Expanded(
    child: TextFormField(
      controller: controller,
      keyboardType : TextInputType.text ,
      validator: (value)
      {
      if(value!.isEmpty)
      {
        return 'title must not be empty';
      }
        return null;
      },
      decoration: InputDecoration(
        hintText: hint,
        fillColor: Colors.white.withOpacity(0.6),
        filled: true,
        suffixIcon: Icon(SuffixIcon , color: Color(0xff50B3CF),),
        prefixIcon: PrefixIcon != null ? Icon(PrefixIcon , color: Color(0xff50B3CF),):null,
      ),

    ),
  );