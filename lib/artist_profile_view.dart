import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listenerlilly/reusable_container.dart';

class ArtistProfileView extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ArtistProfileView> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
        child: ListView(children: <Widget>[
          //artist photo
          Container(
            padding: EdgeInsets.fromLTRB(10, 60, 10, 10),
            //color: Colors.red,
            child: Image(
              alignment: Alignment.center,
              width: 200,
              height: 200,
              image: AssetImage('images/GoldenEye.jpg'),
            ),
          ),
          //artist name
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Artist Name',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                Icons.music_note,
              ),
            ],
          ),

          //artist biography
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            //padding: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
            margin: EdgeInsets.all(10),

            //color: Colors.white,
            width: double.infinity,
            height: 70,
            child: Center(child: Text('Small Bio')),
          ),
          // subscribe and donate row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                textColor: Colors.black,
                color: Color(0xFF00FEF0),
                child: Text(
                  'Subscribe',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onPressed: () {},
              ),
              Container(
                padding: EdgeInsets.only(right: 150),
                child: Text('1k'),
              ),
              RaisedButton(
                //padding: EdgeInsets.only(right: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                textColor: Colors.black,
                color: Color(0xFF29A437),
                child: Text(
                  'Donate',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onPressed: () {},
              )
            ],
          ),
          //albums text
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'Albums',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          // Row of all albums by the artist
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
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'Singles',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // :To do
              ReusableContainer(
                imageAddress: 'images/Spaceship.jpg',
                name: 'Single name',
                containerWidth: queryData.size.width / 3.5,
              ),
              ReusableContainer(
                imageAddress: 'images/Mellow.png',
                name: 'Single Name',
                containerWidth: queryData.size.width / 3.5,
              ),
              ReusableContainer(
                imageAddress: 'images/Lo-Fi LP I.jpg',
                name: 'Single Name',
                containerWidth: queryData.size.width / 3.5,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'Playlists',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // :To do
              ReusableContainer(
                imageAddress: 'images/Spaceship.jpg',
                name: 'Playlist Name',
                containerWidth: queryData.size.width / 3.5,
              ),
              ReusableContainer(
                imageAddress: 'images/Mellow.png',
                name: 'Playlist Name',
                containerWidth: queryData.size.width / 3.5,
              ),
              ReusableContainer(
                imageAddress: 'images/Lo-Fi LP I.jpg',
                name: 'Playlist Name',
                containerWidth: queryData.size.width / 3.5,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
