import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listenerlilly/reusable_container.dart';
import 'button.dart';

class ArtistProfileEdit extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ArtistProfileEdit> {
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
                  Navigator.pushNamed(context, '/artist_profile_view');
                },
              ),
              Button(
                borderRadius: 15,
                name: 'Sign Out',
                fontSize: 12,
                buttonColor: Colors.white,
                whenPressed: () {
                  Navigator.pushNamed(context, '/listener_profile_edit');
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
                    borderRadius: 0,
                    name: 'Change',
                    fontSize: 12,
                    buttonColor: Colors.white,
                    whenPressed: () {},
                  ),
                ),
                width: 200, //queryData.size.width / 3,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('images/Samurai.jpg'),
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
          ), //artist biography
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
              Button(
                borderRadius: 15,
                name: 'Upload Album',
                fontSize: 15,
                buttonColor: Color(0xFF00FEF0),
                whenPressed: () {
                  Navigator.pushNamed(context, '/upload_album');
                },
              ),
              Button(
                borderRadius: 15,
                name: 'Upload Single',
                fontSize: 15,
                buttonColor: Color(0xFF29A437),
                whenPressed: () {
                  Navigator.pushNamed(context, '/upload_single');
                },
              ),
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
              // :To do
              ReusableContainer(
                onTap: () {
                  Navigator.pushNamed(context, '/album_view');
                },
                imageAddress: 'images/Spaceship.jpg',
                name: 'Album View',
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
                onTap: () {
                  Navigator.pushNamed(context, '/song_view');
                },
                imageAddress: 'images/Spaceship.jpg',
                name: 'Song View',
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
