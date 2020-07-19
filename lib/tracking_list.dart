import 'package:flutter/material.dart';

class TrackList extends ChangeNotifier {
  int count;
  TrackList(this.count);
  List<TrackContainer> tracks = [
    TrackContainer(),
    TrackContainer(),
    TrackContainer(),
  ];
}

class TrackContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
