import 'package:flutter/material.dart';

class JobProgressScreen extends StatefulWidget {
  const JobProgressScreen({Key? key}) : super(key: key);

  @override
  _JobProgressScreenState createState() => _JobProgressScreenState();
}

class _JobProgressScreenState extends State<JobProgressScreen> {
  double progress = 120.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF6F9FA),
        elevation: 0.0,
        titleSpacing: 20.0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.teal,
          ),
        ),

      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current Progress',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.teal,
                ),
              ),
              SizedBox(
                width: 7.0,
              ),
              Icon(
                Icons.bike_scooter,
                color: Colors.green,

              ),
            ],
          ),
          Expanded(
            child: Slider(
              value:progress,
              max: 220.0,
              min: 80.0,
              onChanged:(value){
                setState(() {
                  progress = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
