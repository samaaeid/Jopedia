import 'dart:ui';

import 'package:flutter/material.dart';

class DepositScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        backgroundColor: Color(0xffF6F9FA),
        elevation:0.0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.keyboard_arrow_left,
            size: 50.0,
            color: Color(0xffF087874),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Color(0xffF6F9FA),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Deposite',
              style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffF087874)
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: 350.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric( vertical: 0.0, horizontal: 8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Withdrawal Amount',
                  ),
                ),
              ),
            ) ,
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 200.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric( vertical: 0.0, horizontal: 8.0),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  maxLength: 4,
                  decoration: InputDecoration(
                    hintText: 'Credit Pin',
                  ),
                ),
              ),
            ) ,
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 150.0,
              height: 35.0,
              child: MaterialButton(
                onPressed: () {  },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color:Color(0xffF087874),
              ),
            ),
          ],
        ),
      ),
    );
  }

}