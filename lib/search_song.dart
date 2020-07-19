import 'package:flutter/material.dart';
import 'package:listenerlilly/reusable_container.dart';

class SearchSong extends StatefulWidget {
  @override
  _SearchSongState createState() => _SearchSongState();
}

class _SearchSongState extends State<SearchSong> {
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
                child: Text('Song Name'),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ReusableContainer(
                  imageAddress: 'images/Arcade.jpg',
                  name: 'Song name',
                  containerWidth: queryData.size.width / 3.5,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ReusableContainer(
                  imageAddress: 'images/Lost.jpg',
                  name: 'Album name',
                  containerWidth: queryData.size.width / 3.5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
