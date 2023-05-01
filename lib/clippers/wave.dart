import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  final int index;

  WaveClipper({required this.index});

  @override
  Path getClip(Size size) {
    switch (index) {
      case 1:
        return draw1(size);
      default:
        return draw2(size);
    }
  }

  @override
  bool shouldReclip(WaveClipper oldClipper) {
    return oldClipper != this;
  }

  Path draw1(Size size) {
    var path = Path();
    path.lineTo(0, size.height * .33);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * .33);
    var firstStart = Offset(size.width * .8, size.height * .39);
    var firstEnd = Offset(size.width * .5, size.height * .34);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width * .2, size.height * .29);
    var secondEnd = Offset(0, size.height * .35);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.close();
    return path;
  }

  Path draw2(Size size) {
    var path = Path();
    path.lineTo(0, size.height * .30);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * .30);
    var firstStart = Offset(size.width * .8, size.height * .37);
    var firstEnd = Offset(size.width * .5, size.height * .31);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width * .2, size.height * .26);
    var secondEnd = Offset(0, size.height * .32);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.close();
    return path;
  }
}
