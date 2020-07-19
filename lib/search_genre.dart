import 'package:flutter/material.dart';
import 'package:listenerlilly/reusable_container.dart';

class SearchGenre extends StatefulWidget {
  @override
  _SearchGenreState createState() => _SearchGenreState();
}

class _SearchGenreState extends State<SearchGenre> {
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
                  'Genre Type',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            // Albums display
            Container(
              padding: EdgeInsets.only(top: 40, bottom: 5),
              child: Text(
                'Albums',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ReusableContainer(
                  imageAddress: 'images/Spaceship.jpg',
                  name: 'Album name',
                  containerWidth: queryData.size.width / 3.5,
                ),
                ReusableContainer(
                  imageAddress: 'images/Mellow.png',
                  name: 'Album Name',
                  containerWidth: queryData.size.width / 3.5,
                ),
                ReusableContainer(
                  imageAddress: 'images/Lo-Fi LP I.jpg',
                  name: 'Album Name',
                  containerWidth: queryData.size.width / 3.5,
                ),
              ],
            ),
            //Songs Display
            Container(
              padding: EdgeInsets.only(top: 40, bottom: 5),
              child: Text(
                'Songs',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ReusableContainer(
                  imageAddress: 'images/Spaceship.jpg',
                  name: 'Song name',
                  containerWidth: queryData.size.width / 3.5,
                ),
                ReusableContainer(
                  imageAddress: 'images/Mellow.png',
                  name: 'Song Name',
                  containerWidth: queryData.size.width / 3.5,
                ),
                ReusableContainer(
                  imageAddress: 'images/Lo-Fi LP I.jpg',
                  name: 'Song Name',
                  containerWidth: queryData.size.width / 3.5,
                ),
              ],
            ),
            // You might like
          ],
        ),
      ),
    );
  }
}
