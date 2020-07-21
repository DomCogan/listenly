import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:listenerlilly/reusable_container.dart';

class AlbumView extends StatefulWidget {
  @override
  _AlbumViewState createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
        // backgroundColor: Colors.grey,
        body: Container(
            //height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage("images/Cogan.jpg"),
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
                    child: Container(
                      //alignment: Alignment.center,
                      color: Colors.grey.withOpacity(0.05),
                      child: ListView(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 50),
                                width: 400,
                                height: 400,
                                //color: Colors.grey.shade900,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        ReusableContainer(
                                          // margin: EdgeInsets.all(15.0),
                                          containerWidth:
                                              queryData.size.width / 1.3,
                                          height: 300,
                                          imageAddress: 'images/Cogan.jpg',
                                          name: '',
                                        ),
                                      ],
                                    ),
                                    Center(
                                      child: Text(
                                        'Album Name',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                ReusableContainer(
                                  containerWidth: 50,
                                  height: 50,
                                  imageAddress: 'images/Cogan.jpg',
                                  name: '',
                                  borderRadius: 0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Track Title',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        '5:00',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        print('tapped');
                                      },
                                      child: ClipOval(
                                        child: Container(
                                          color: Colors.white,
                                          height: 40.0, // height of the button
                                          width: 40.0, // width of the button
                                          child: Center(
                                            child: Icon(
                                                Icons.play_circle_outline,
                                                size: 40),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            width: double.infinity,
                            height: 50,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                ReusableContainer(
                                  containerWidth: 50,
                                  height: 50,
                                  imageAddress: 'images/Cogan.jpg',
                                  name: '',
                                  borderRadius: 0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Track Title',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        '5:00',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        print('tapped');
                                      },
                                      child: ClipOval(
                                        child: Container(
                                          color: Colors.white,
                                          height: 40.0, // height of the button
                                          width: 40.0, // width of the button
                                          child: Center(
                                            child: Icon(
                                                Icons.play_circle_outline,
                                                size: 40),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )))));
  }
}
