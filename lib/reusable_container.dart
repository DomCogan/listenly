import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer(
      {@required //this.colour,
          //this.cardChild,
          //this.onPress,
          this.imageAddress,
      this.containerWidth,
      this.name,
      this.onTap});

  // final Color colour;
  //final Widget cardChild;
  //final Function onPress;
  final double containerWidth;
  final String imageAddress;
  final String name;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Align(
          alignment: FractionalOffset.bottomCenter,
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        // margin: EdgeInsets.all(15.0),
        width: containerWidth,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imageAddress),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
