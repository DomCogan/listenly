import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listenerlilly/reusable_container.dart';

class UploadAlbum extends StatefulWidget {
  static _UploadAlbum of(BuildContext context) =>
      context.findAncestorStateOfType<_UploadAlbum>();
  @override
  _UploadAlbum createState() => new _UploadAlbum();
}

class _UploadAlbum extends State<UploadAlbum> {
  int count = 1;
  TextEditingController albumController = TextEditingController();
  TextEditingController genreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Widget> contatos = new List.generate(
        count,
        (int i) => new Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //padding: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
                    //margin: EdgeInsets.all(10),

                    //color: Colors.white,
                    width: 250,
                    height: 30,
                    child: Center(child: Text('Track1')),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('tapped');
                    },
                    child: ClipOval(
                      child: Container(
                        color: Colors.white,
                        height: 30.0, // height of the button
                        width: 30.0, // width of the button
                        child: Center(
                          child: Icon(Icons.add, size: 30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));

    return new Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: new LayoutBuilder(builder: (context, constrain) {
        //final _maxHeight = constraint.biggest.height / 3;
        //final _biggerFont = TextStyle(fontSize: _maxHeight / 6);

        return new ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Upload Album',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.white,
                  child: Icon(
                    Icons.add,
                    size: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 190,
                  height: 50,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    //padding: EdgeInsets.fromLTRB(5, 30, 5, 5),
                    color: Colors.white,
                    child: TextField(
                      controller: albumController,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'Album Name',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 190,
                  height: 50,
                  child: Card(
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
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Track List',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),

            Column(
              children: contatos,
              //scrollDirection: Axis.vertical,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    addNewContactRow();
                    print('tapped');
                  },
                  child: ClipOval(
                    child: Container(
                      color: Colors.white,
                      height: 50.0, // height of the button
                      width: 50.0, // width of the button
                      child: Center(
                        child: Icon(Icons.add, size: 50),
                      ),
                    ),
                  ),
                ),
                Text('Add Track'),
              ],
            ),
            //new ContactRow()
          ],
        );
      }),
    ));
  }

  void addNewContactRow() {
    setState(() {
      count = count + 1;
    });
  }
}
