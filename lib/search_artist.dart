import 'package:flutter/material.dart';
import 'package:listenerlilly/reusable_container.dart';

class SearchArtist extends StatefulWidget {
  @override
  _SearchArtistState createState() => _SearchArtistState();
}

class _SearchArtistState extends State<SearchArtist> {
  TextEditingController search = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              //padding: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
              //margin: EdgeInsets.all(10),

              //color: Colors.white,
              width: double.infinity,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 8, 8, 8),
                child: Text(
                  'Artist Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Text(
                      'Artist Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  // margin: EdgeInsets.all(15.0),
                  width: queryData.size.width / 2,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('images/GoldenEye.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
