import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listenerlilly/reusable_container.dart';
import 'button.dart';

class ListenerProfile extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ListenerProfile> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Button(
                  borderRadius: 15,
                  name: 'Edit Profile',
                  fontSize: 12,
                  buttonColor: Colors.white,
                  whenPressed: () {
                    Navigator.pushNamed(context, '/listener_profile_edit');
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
            SizedBox(
              height: 50,
            ),
            //artist thumbnail
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ReusableContainer(
                  name: '',
                  height: 200,
                  containerWidth: 200,
                  imageAddress: 'images/Mellow.png',
                ),
              ],
            ),
            //Listener name
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    'Listener Name',
                    style: TextStyle(
                      fontSize: 25,
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
          ],
        ),
      ),
    );
  }
}
