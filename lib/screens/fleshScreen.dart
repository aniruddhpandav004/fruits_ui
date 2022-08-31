import 'dart:async';

import 'package:flutter/material.dart';

class FleshScreen extends StatefulWidget {
  const FleshScreen({Key? key}) : super(key: key);

  @override
  State<FleshScreen> createState() => _FleshScreenState();
}

class _FleshScreenState extends State<FleshScreen> {
  double i = 0;

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, 'fruits');
      },
    );
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        i = i + 1 / 3.5;
      });
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Create By Aniruddh",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 20),
              Text("FRUITS APP",style: TextStyle(fontSize: 30,color: Colors.green),),
              Container(
                height: 300,
                width: 300,
                child: Image.asset("assets/Images/123.jpg"),
              ),
              SizedBox(height: 20),
              CircularProgressIndicator(
                value: i,
                backgroundColor: Colors.green.shade100,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
