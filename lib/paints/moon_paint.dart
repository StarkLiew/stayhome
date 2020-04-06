import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class MoonPaint extends StatelessWidget {
  final double diameter;


  const MoonPaint({Key key, this.diameter = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _MoonPaint(Theme.of(context).accentColor),
      size: Size(diameter, diameter),
     
    );
  }
}

// This is the Painter class
class _MoonPaint extends CustomPainter {
  final Color color;

  _MoonPaint(this.color);



  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 1.5, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi * 2.25, //Rotate
      math.pi * 1.5, 
      false,
      paint,
    );
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}