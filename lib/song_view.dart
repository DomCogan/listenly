import 'dart:ui';

import 'package:flutter/material.dart';

class SongView extends StatefulWidget {
  @override
  _SongViewState createState() => _SongViewState();
}

class _SongViewState extends State<SongView> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      //backgroundColor: Colors.grey,
      body: Container(
        //height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("images/Samurai.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRRect(
          // make sure we apply clip it properly
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
            child: Center(
              child: Container(
                alignment: Alignment.center,
                child: ListView(
                  children: <Widget>[
                    //couldn't figure out how to center it so i use this just for now
                    //till we figure it out
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 60),
                      width: 400,
                      height: 400,
                      //color: Colors.grey.shade900,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                // margin: EdgeInsets.all(15.0),
//
                                width: queryData.size.width / 1.5,
                                height: queryData.size.height / 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage('images/Samurai.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Text(
                              'Song Title',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              print('tapped');
                            },
                            child: ClipOval(
                              child: Container(
                                color: Colors.grey[900],
                                height: 40.0, // height of the button
                                width: 40.0, // width of the button
                                child: Center(
                                  child: Icon(
                                    Icons.fast_forward,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('tapped');
                            },
                            child: ClipOval(
                              child: Container(
                                color: Colors.grey[900],
                                height: 40.0, // height of the button
                                width: 40.0, // width of the button
                                child: Center(
                                  child: Icon(
                                    Icons.skip_previous,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('tapped');
                            },
                            child: ClipOval(
                              child: Container(
                                color: Colors.grey[900],
                                height: 50.0, // height of the button
                                width: 50.0, // width of the button
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('tapped');
                            },
                            child: ClipOval(
                              child: Container(
                                color: Colors.grey[900],
                                height: 40.0, // height of the button
                                width: 40.0, // width of the button
                                child: Center(
                                  child: Icon(
                                    Icons.skip_next,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('tapped');
                            },
                            child: Center(
                              child: Icon(
                                //on tap turn red
                                Icons.favorite_border,
                                size: 40,
                                color: Colors.grey[900],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
