import 'package:flutter/material.dart';
import 'package:loginui/exercise/homePage.dart';

class Dinner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DINNER MENU'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Dinner1.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Dinner2.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Dinner3.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Dinner4.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Dinner5.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Dinner6.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Dinner7.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Dinner8.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Dinner9.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Dinner10.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('images/Dinner11.jpg'),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 80, right: 80, bottom: 30),
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
                            builder: (context) => MyHomePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Exercise',
                        style: TextStyle(color: Colors.amber[700], fontSize: 25),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),


      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}