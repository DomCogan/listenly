import 'package:flutter/material.dart';
import 'button.dart';

class ListenerProfileEdit extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ListenerProfileEdit> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
        child: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RawMaterialButton(
                constraints: BoxConstraints(),
                padding: EdgeInsets.all(
                    2.0), // optional, in order to add additional space around text if needed

                //color: Colors.white,
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/artist_profile');
                },
              ),
              Button(
                borderRadius: 15,
                name: 'Sign Out',
                fontSize: 12,
                buttonColor: Colors.white,
                whenPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ],
          ),
          //artist thumbnail
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                //color: Colors.white,
                child: Align(
                  alignment: FractionalOffset.topRight,
                  child: Button(
                    name: 'Change',
                    borderRadius: 5,
                    buttonColor: Colors.white,
                    whenPressed: () {},
                  ),
                ),
                width: 200, //queryData.size.width / 3,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('images/Mellow.png'),
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          //artist name
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Listener Name',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(Icons.headset, color: Colors.black),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Subscriptions',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                child: Align(
                  alignment: AlignmentDirectional.lerp(
                      AlignmentDirectional.topCenter,
                      AlignmentDirectional.center,
                      1.6),
                  child: Text(
                    'Artist Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                radius: 80,
                backgroundImage: AssetImage('images/GoldenEye.jpg'),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
//artist biography
