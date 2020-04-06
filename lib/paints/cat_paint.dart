import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class CatPaint extends StatelessWidget {
  const CatPaint({Key key, this.diameter = 200}) : super(key: key);

  final double diameter;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _CatPaint(Color(0xFFD63026)),
      size: Size(120, 120),
     
    );
  }
}

// This is the Painter class
class _CatPaint extends CustomPainter {
  _CatPaint(this.color);

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    Paint white = Paint()..color = Colors.white;
    Paint whiteStroke = Paint()
          ..color = Colors.white
          ..strokeWidth = 3.0
          ..style = PaintingStyle.stroke;

  
    canvas.drawArc(

      Rect.fromCenter(
        center: Offset(size.height / 1, size.width),
        height: size.height,
        width: size.width,
      ),
      math.pi * 0.9, //Rotate
      math.pi * 1.2, 
      false,
      paint,
    );

     // Body
     canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 0.6, size.width),
        height: size.height * 1.2,
        width: size.width * 1.2,
      ),
      math.pi * 0.9, //Rotate
      math.pi * 1.2, 
      false,
      paint,
    );

   // Nose
   canvas.drawCircle(
        Offset(size.height / 1.2, size.width / 1.1)
      , 5, white);

    // Right Eye
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 1.5, size.width /1.2),
        height: 15,
        width: 15,
      ),
      -math.pi/ 1.5, //Rotate
      math.pi/1.6, 
      false,
      whiteStroke,
    );

    // Left Eye
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height , size.width /1.2),
        height: 15,
        width: 15,
      ),
      math.pi/ 1, //Rotate
      math.pi/1.6, 
      false,
      whiteStroke,
    ); 

    // Right Ear
    var path = Path();
    double y = 90;
    double x = 135;
    path.moveTo(75, y);
    path.lineTo(x/2, 55);
    path.lineTo(x,y);
    path.close();
    canvas.drawPath(path, paint);
 
       // Left Ear
    var pathLeft = Path();
    double yLeft = 75;
    double xLeft = 145;
    pathLeft.moveTo(110, yLeft);
    pathLeft.lineTo(xLeft, 95);
    pathLeft.lineTo(xLeft,yLeft/2);
    pathLeft.close();
    canvas.drawPath(pathLeft, paint);
  

    /* var pot = Path();
 
    
   pot.moveTo(0, 367);
   pot.lineTo(52.5, 396);

   pot.quadraticBezierTo(52.5,396, 22, 416);
   pot.quadraticBezierTo(22,416, 0, 443);
    pot.close();
    canvas.drawPath(pot, paint); */



  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}