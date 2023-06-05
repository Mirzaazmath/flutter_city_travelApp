import 'package:flutter/material.dart';
class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width*0.0028571,size.height*0.0050000);
    path0.lineTo(0,size.height*0.9900000);
    path0.quadraticBezierTo(size.width*0.2709429,size.height*0.9899500,size.width*0.3428571,size.height*0.9900000);
    path0.quadraticBezierTo(size.width*0.4913714,size.height*0.6445000,size.width*0.6352857,size.height*0.9881500);
    path0.quadraticBezierTo(size.width*0.9148571,size.height*0.9904500,size.width*0.9942857,size.height*0.9850000);
    path0.quadraticBezierTo(size.width*0.9984286,size.height*0.7676500,size.width*0.9914286,size.height*0.0100000);
    path0.lineTo(size.width*0.0028571,size.height*0.0050000);
    path0.close();

    // path.close();
    return path0;
  }
  /// this must be true
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>true;
// TODO: implement shouldReclip



}