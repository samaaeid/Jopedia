//import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jopedia/modules/Card/YourCard.dart';
import 'package:jopedia/modules/deposit/DepositScreen.dart';
import 'package:jopedia/modules/withdrawal/WithdrawalScreen.dart';

class WalletScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF087874),
        elevation : 0.0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.menu,
            size: 30.0,
            color: Colors.white54,
          ),
        ),
      ),
      body: Container(
        color: Color(0xffF087874),
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Your Balance',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white54,
              ),
            ),
            Text(
              '1732,00 LE',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF6F9FA),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150.0,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xffF087874),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DepositScreen()),
                              );
                            },
                            child: Container(
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.start ,
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'Deposite',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Icon(
                                    Icons.credit_card,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),

                          ),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Container(
                          width: 150.0,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xffF087874),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => WithdrawalScreen()),
                              );
                            },
                            child: Container(
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.center ,
                                children: [
                                  Text(
                                    'Withdrawal',
                                    style: TextStyle(
                                      color: Colors.white,

                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(
                                    Icons.credit_card,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),

                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      width: 250.0,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: MaterialButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => YourCard()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: [
                            Icon(
                              Icons.credit_card,
                              size: 30.0,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Manage Card',
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                            SizedBox(
                              width: 92,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 20.0,

                            ),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}