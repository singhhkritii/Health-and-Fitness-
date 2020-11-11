import 'package:flutter/material.dart';
import 'package:loginui/Diet/Snack.dart';

class Lunch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LUNCH MENU'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/lunch1.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/lunch2.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/lunch3.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/lunch4.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/lunch5.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/lunch6.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/lunch7.jpg'),
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => Snack(),
          ),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
