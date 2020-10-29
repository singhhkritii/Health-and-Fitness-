import 'package:flutter/material.dart';
import 'package:loginui/Diet/Lunch.dart';

class Breakfast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BREAKFAST MENU'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/breakfast1.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/breakfast2.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/breakfast3.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/breakfast4.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/breakfast5.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/breakfast6.jpg'),
            ),
          ],
        ),

      ),
    floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => Lunch(),
          ),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
