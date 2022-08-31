import 'package:flutter/material.dart';
import 'package:fruits/screens/dataScreen.dart';
import 'package:fruits/screens/fleshScreen.dart';
import 'package:fruits/screens/fruits.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Color(0xffFEBF75),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      routes: {
        '/': (context) => FleshScreen(),
        'fruits': (context) => Fruits(),
        'Data': (context) => Data(),
      },
    ),
  );
}
