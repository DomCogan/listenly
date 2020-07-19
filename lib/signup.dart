import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listenerlilly/reusable_container.dart';

class SignUp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.lightGreenAccent,
        body: Padding(
            padding: EdgeInsets.fromLTRB(10, 70, 10, 10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
                    child: Text(
                      'LISTEN.LY',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 70),
                    )),
                //user name
                Card(
                  //padding: EdgeInsets.all(10),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'User Name',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                //artist or user
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'Are You an Artist?',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      ButtonTheme(
                        minWidth: 7,
                        height: 6,
                        child: FlatButton(
                          //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          color: Colors.white,
                          //textColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            'Yes',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        ),
                      ),
                      ButtonTheme(
                        minWidth: 7,
                        height: 2,
                        child: FlatButton(
                          //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          color: Colors.white,
                          //textColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            'No',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        ),
                      )
                    ],
                    //mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                //Email
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    obscureText: true,
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                //login button
                Container(
                  height: 100,
                  padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      print(nameController.text);
                      print(passwordController.text);
                    },
                  ),
                ),
              ],
            )));
  }
}
