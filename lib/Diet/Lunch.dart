import 'package:flutter/material.dart';

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
              child: Image.asset('images/.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/.jpg'),
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
