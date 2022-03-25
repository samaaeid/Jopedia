import 'package:flutter/material.dart';
import 'package:jopedia/layout/home_layout.dart';
import 'package:jopedia/modules/create_job/CreateJobScreen.dart';
import 'package:jopedia/modules/job_progress/JobProgressScreen.dart';
import 'package:jopedia/modules/notification/NotificationScreen.dart';
import 'package:jopedia/modules/search/SearchScreen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_layout(),
    );
  }

}