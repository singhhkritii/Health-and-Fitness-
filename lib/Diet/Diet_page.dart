import 'package:flutter/material.dart';
import 'package:loginui/Diet/Breakfast.dart';
import 'package:loginui/Diet/Dinner.dart';
import 'package:loginui/Diet/Lunch.dart';
import 'package:loginui/Diet/Snack.dart';

class DietPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DIET'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 42.5,
          ),
          Text(
            'Choose Your Own Meal',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(
            height: 42.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: ButtonTheme(
              buttonColor: Colors.white,
              minWidth: MediaQuery.of(context).size.width,
              height: 55,
              child: Center(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Breakfast(),
                      ),
                    );
                  },
                  child: Text(
                    'Breakfast',
                    style: TextStyle(color: Colors.amber[700], fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: ButtonTheme(
              buttonColor: Colors.white,
              minWidth: MediaQuery.of(context).size.width,
              height: 55,
              child: Center(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Lunch(),
                      ),
                    );
                  },
                  child: Text(
                    'Lunch',
                    style: TextStyle(color: Colors.amber[700], fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: ButtonTheme(
              buttonColor: Colors.white,
              minWidth: MediaQuery.of(context).size.width,
              height: 55,
              child: Center(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Snack(),
                    ),
                    );
                  },
                  child: Text(
                    'Snacks',
                    style: TextStyle(color: Colors.amber[700], fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: ButtonTheme(
              buttonColor: Colors.white,
              minWidth: MediaQuery.of(context).size.width,
              height: 55,
              child: Center(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Dinner(),
                    ),
                    );
                  },
                  child: Text(
                    'Dinner',
                    style: TextStyle(color: Colors.amber[700], fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Image.asset('images/die.png'),
          ),
        ],
      ),
    );
  }
}