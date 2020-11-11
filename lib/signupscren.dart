import 'package:flutter/material.dart';
import 'package:loginui/customwidget/customtextfield.dart';
import 'package:loginui/screens/input_page.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/3.png'), fit: BoxFit.cover),
          gradient: LinearGradient(
              colors: [Colors.amber[400], Colors.amber[600]],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 150,),
               Row(
                children: <Widget>[
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'Create Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              CustomTextField(
                hint: '    Enter your name',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '    Enter your Email',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '    Enter your Password',
                issecured: true,
              ),
              SizedBox(
                height: 25,
              ),  Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: ButtonTheme(
                    buttonColor: Colors.white,
                    minWidth: MediaQuery.of(context).size.width,
                    height: 53,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => InputPage(),
                        ),
                        );
                      },
                      child: Text(
                        'Create',
                        style: TextStyle(color: Colors.grey, fontSize: 22),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
