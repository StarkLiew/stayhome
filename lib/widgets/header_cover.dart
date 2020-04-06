
import 'package:flutter/material.dart';
import 'package:stayhome/paints/cat_paint.dart';
import 'package:stayhome/paints/moon_paint.dart';

class HeaderCover extends StatefulWidget {
  @override
  HeaderCoverState createState() {
    return HeaderCoverState();
  }
}

class HeaderCoverState extends State<HeaderCover> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
          
                child: Padding(
                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
                  child: Text('Stay\nHome',
                      style: TextStyle(
                          fontSize: 80,
                          letterSpacing: 0.5,
                          color: Colors.white,
                          fontWeight: FontWeight.w900)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 70),
                child: MoonPaint(diameter: 100,)
              ),
          
            ]),
            Row(
              children: <Widget> [
                  CatPaint(diameter: 20,)
              ]
            )
      ]
    );
  }
}
