import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loginui/loginscreen.dart';
import 'package:loginui/welcomePage.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xffffc107),
        accentColor: Color(0xffffca28),
        scaffoldBackgroundColor: Color(0xffffc107),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 3500), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => Loginscreen(),
          ));
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/welcome.gif'), fit: BoxFit.cover),
            gradient: LinearGradient(
                colors: [Colors.amber[500], Colors.amber[600]],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 120,
              ),
              Text(
                'Healthy LifeStyle',
                style: TextStyle(
                    fontFamily: 'Camar', color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 260,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 150,
              ),
              LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                width: 240.0,
                lineHeight: 4.0,
                animation: true,
                percent: 1.0,
                animationDuration: 3500,
                backgroundColor: Colors.grey,
                progressColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}