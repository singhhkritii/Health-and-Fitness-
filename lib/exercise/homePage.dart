import 'package:flutter/material.dart';
import './exerciseList.dart';
import 'package:intl/intl.dart';
import 'package:loginui/exercise/exercise.dart';
import 'dart:math';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  final String plan;

  MyHomePage({this.plan});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final repsController = TextEditingController();
String dayname = DateFormat.EEEE().format(DateTime.now());

final List<Exercise> availableList = [
  Exercise(
      imageUrl: "images/Exercise1.jpg"),
  Exercise(
      imageUrl: "images/Exercise2.jpg"),
  Exercise(
      imageUrl: "images/Exercise3.jpg"),
  Exercise(
      imageUrl: "images/Exercise4.jpg"),
  Exercise(
      imageUrl: "images/Exercise5.jpg"),
  Exercise(
      imageUrl: "images/Exercise6.jpg"),
  Exercise(
      imageUrl: "images/Exercise7.jpg"),
  Exercise(
      imageUrl: "images/Exercise8.jpg"),
  Exercise(
      imageUrl: "images/Exercise9.jpg"),
  Exercise(
      imageUrl: "images/Exercise10.jpg"),
  Exercise(
      imageUrl: "images/Exercise11.jpg"),
  Exercise(
      imageUrl: "images/Exercise12.jpg"),
];

class _MyHomePageState extends State<MyHomePage> {
  List<Exercise> randomList = [];
  bool checkedButton = false;
  int reps = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/3.png'),
              fit: BoxFit.fitHeight),
        ),
        child: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 60, 0, 20),
                      child: Text(
                        "It's $dayname today.",
                        style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RaisedButton(
                              color: checkedButton
                                  ? Colors.amber[400]
                                  : Colors.amber,
                              onPressed: () => {},
                              child: Text(
                                " LET'S START EXERCISING ",
                                style: TextStyle(
                                    color: checkedButton
                                        ? Colors.white
                                        : Colors.white),
                              ),
                            ),
                        ExerciseList(
                          availableList:
                              randomList.isEmpty ? availableList : randomList,
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
