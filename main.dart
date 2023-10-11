import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myapp/page-1/forgotscreen.dart';
import 'package:myapp/page-1/reg.dart';
import 'package:myapp/page-1/register.dart';
import 'package:myapp/page-1/screen1.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/login.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:myapp/page-1/iphone-14-pro-max-2.dart';

void main() {
  runApp(MyApp());
  Fluttertoast.showToast(msg: "App started"); // Initialize FlutterToast
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Scene(),
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Material(
        // Wrap the Scene widget with a Material widget
        child: Scene3(),
      ),
    );
  }
}

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          // physics: BouncingScrollPhysics(), // You can remove this line if you prefer the default scroll physics
          child: Column(
            children: [
              Expanded(
                child: Scene5(
                  fullName: 'YourFullName', // Replace with the actual full name
                  mobile:
                      'YourMobileNumber', // Replace with the actual mobile number
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
