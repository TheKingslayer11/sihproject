import 'dart:async';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:school_management/Screens/LoginPage.dart';

class SpleashScreen extends StatefulWidget {
  @override
  _SpleashScreenState createState() => _SpleashScreenState();
}

class _SpleashScreenState extends State<SpleashScreen> {
  @override
  @override
  void initState() {
    Firebase.initializeApp();

    Timer(Duration(seconds: 4), start);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            Container(
            /*height: MediaQuery.of(context).size.height * 0.27,
            width: MediaQuery.of(context).size.width * 0.35,*/
            child: Text('VEMANA INSTITUTE',
                   style:TextStyle(fontSize: 34, fontWeight: FontWeight.bold,color: Colors.deepOrange)
                  
              //animation: "start",
              //fit: BoxFit.fill,
            ),
          ),
          ]
        ),
      ),
    );
  }

  start() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => MyHomePage(),
        ),
      );
    });
  }
}
