import 'package:flutter/material.dart';
import 'package:loginui/Diet/Breakfast.dart';
import 'package:loginui/Diet/Lunch.dart';

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
            height: 120,
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
                    builder: (context) => Breakfast(),
                    ),
                    );
                    },
                  child: Text(
                    'Breakfast',
                    style: TextStyle(color: Colors.blue, fontSize: 25),
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
                      builder: (context) => Lunch(),
                    ),
                    );
                  },
                  child: Text(
                    'Lunch',
                    style: TextStyle(color: Colors.blue, fontSize: 25),
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
                  onPressed: () {},
                  child: Text(
                    'Snacks',
                    style: TextStyle(color: Colors.blue, fontSize: 25),
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
                  onPressed: () {},
                  child: Text(
                    'Dinner',
                    style: TextStyle(color: Colors.blue, fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ),
          ),

        ],
      ),



      );
  }
}
