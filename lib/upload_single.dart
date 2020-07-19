import 'package:flutter/material.dart';
import 'package:listenerlilly/reusable_container.dart';
import 'upload_album.dart';

class UploadSingle extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<UploadSingle> {
  TextEditingController trackController = TextEditingController();
  TextEditingController genreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightGreenAccent,
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: ListView(
          children: <Widget>[
            Center(
              child: Text(
                'Upload Single',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.white,
              child: Icon(
                Icons.add,
                size: 100,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              //padding: EdgeInsets.fromLTRB(5, 30, 5, 5),
              color: Colors.white,
              child: TextField(
                controller: trackController,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Track Name',
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              //padding: EdgeInsets.fromLTRB(5, 30, 5, 5),
              color: Colors.white,
              child: TextField(
                controller: genreController,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Genre',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/upload_album');
                  print('tapped');
                },
                child: ClipOval(
                  child: Container(
                    color: Colors.white,
                    height: 70.0, // height of the button
                    width: 70.0, // width of the button
                    child: Center(
                      child: Icon(Icons.add, size: 70),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
