import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listenerlilly/reusable_container.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            Row(
              children: <Widget>[
                SizedBox(
                  width: queryData.size.width / 1.3,
                  height: 50,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.white,
                    child: TextField(
                      textAlign: TextAlign.start,
                      controller: search,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      onSubmitted: (String str) {
                        print(str);
                        if (str == 'genre') {
                          Navigator.pushNamed(context, '/search_genre');
                        } else if (str == 'song') {
                          Navigator.pushNamed(context, '/search_song');
                        } else if (str == 'artist') {
                          Navigator.pushNamed(context, '/search_artist');
                        }
                      },
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle: TextStyle(
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'Search Song or Artist',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/listener_profile');
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/GoldenEye.jpg'),
                  ),
                ),
              ],
            ),
            // Subscription
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                'Subscriptions',
                style: TextStyle(
                  fontSize: 20,
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
            //Trending
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 5),
              child: Text(
                'Trending',
                style: TextStyle(
                  fontSize: 20,
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
            // You might like
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 5),
              child: Text(
                'You might Like',
                style: TextStyle(
                  fontSize: 20,
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
          ],
        ),
      ),
    );
  }
}
