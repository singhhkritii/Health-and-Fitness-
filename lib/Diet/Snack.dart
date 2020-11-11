import 'package:flutter/material.dart';
import 'package:loginui/Diet/Dinner.dart';

class Snack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SNACK MENU'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Snack1.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Snack2.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Snack3.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Snack4.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Snack5.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Snack6.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Snack7.jpg'),
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => Dinner(),
          ),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}