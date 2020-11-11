import 'package:flutter/material.dart';
import 'package:loginui/Diet/Diet_page.dart';
import 'package:loginui/exercise/homePage.dart';
import 'package:loginui/loginscreen.dart';
import 'package:loginui/screens/input_page.dart';

class welcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/index.gif'), fit: BoxFit.cover),
                gradient: LinearGradient(
                    colors: [Colors.amber[500], Colors.amber[700]],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(120, 160, 20, 100),
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                height: 55,
                child: Center(
                  child: FlatButton(
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
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 100, 140, 100),
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                height: 55,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DietPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Diet',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(170, 70, 0, 50),
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                height: 55,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InputPage(),
                        ),
                      );
                    },
                    child: Text(
                      'BMI',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    ),
    );
  }
}
