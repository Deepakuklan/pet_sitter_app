import 'package:flutter/material.dart';
import 'package:pet_sitter_app/constant.dart';

class BezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.9858889, size.height * 0.4384615);
    path0.cubicTo(
        size.width * 0.9812222,
        size.height * 0.3404103,
        size.width * 0.8895556,
        size.height * 0.2532308,
        size.width * 0.7833333,
        size.height * 0.1743590);
    path0.cubicTo(
        size.width * 0.6847222,
        size.height * 0.1038462,
        size.width * 0.5652778,
        size.height * 0.0500000,
        size.width * 0.4333333,
        size.height * 0.0256410);
    path0.cubicTo(
        size.width * 0.3041667,
        size.height * 0.0025641,
        size.width * 0.1513889,
        size.height * 0.0205128,
        size.width * 0.0722222,
        size.height * 0.0974359);
    path0.cubicTo(
        size.width * -0.0048333,
        size.height * 0.1769231,
        size.width * -0.0006667,
        size.height * 0.3205128,
        size.width * 0.0083333,
        size.height * 0.4358974);
    path0.cubicTo(
        size.width * 0.0166667,
        size.height * 0.5512821,
        size.width * 0.0305556,
        size.height * 0.6461538,
        size.width * 0.0750000,
        size.height * 0.7435897);
    path0.cubicTo(
        size.width * 0.1201667,
        size.height * 0.8435897,
        size.width * 0.1854444,
        size.height * 0.9505128,
        size.width * 0.2777778,
        size.height * 0.9761538);
    path0.cubicTo(
        size.width * 0.3763889,
        size.height * 1.0120513,
        size.width * 0.4943889,
        size.height * 0.9705128,
        size.width * 0.5949444,
        size.height * 0.9191795);
    path0.cubicTo(
        size.width * 0.6945000,
        size.height * 0.8664615,
        size.width * 0.7791111,
        size.height * 0.8060000,
        size.width * 0.8573333,
        size.height * 0.7251795);
    path0.cubicTo(
        size.width * 0.9320556,
        size.height * 0.6419487,
        size.width * 1.0020556,
        size.height * 0.5327179,
        size.width * 0.9858889,
        size.height * 0.4384615);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//FOR Avtar BORDER
class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = kFF46D1B8.withOpacity(0.20);
    Path path0 = Path();
    path0.moveTo(size.width * 0.9858889, size.height * 0.4384615);
    path0.cubicTo(
        size.width * 0.9812222,
        size.height * 0.3404103,
        size.width * 0.8895556,
        size.height * 0.2532308,
        size.width * 0.7833333,
        size.height * 0.1743590);
    path0.cubicTo(
        size.width * 0.6847222,
        size.height * 0.1038462,
        size.width * 0.5652778,
        size.height * 0.0500000,
        size.width * 0.4333333,
        size.height * 0.0256410);
    path0.cubicTo(
        size.width * 0.3041667,
        size.height * 0.0025641,
        size.width * 0.1513889,
        size.height * 0.0205128,
        size.width * 0.0722222,
        size.height * 0.0974359);
    path0.cubicTo(
        size.width * -0.0048333,
        size.height * 0.1769231,
        size.width * -0.0006667,
        size.height * 0.3205128,
        size.width * 0.0083333,
        size.height * 0.4358974);
    path0.cubicTo(
        size.width * 0.0166667,
        size.height * 0.5512821,
        size.width * 0.0305556,
        size.height * 0.6461538,
        size.width * 0.0750000,
        size.height * 0.7435897);
    path0.cubicTo(
        size.width * 0.1201667,
        size.height * 0.8435897,
        size.width * 0.1854444,
        size.height * 0.9505128,
        size.width * 0.2777778,
        size.height * 0.9761538);
    path0.cubicTo(
        size.width * 0.3763889,
        size.height * 1.0120513,
        size.width * 0.4943889,
        size.height * 0.9705128,
        size.width * 0.5949444,
        size.height * 0.9191795);
    path0.cubicTo(
        size.width * 0.6945000,
        size.height * 0.8664615,
        size.width * 0.7791111,
        size.height * 0.8060000,
        size.width * 0.8573333,
        size.height * 0.7251795);
    path0.cubicTo(
        size.width * 0.9320556,
        size.height * 0.6419487,
        size.width * 1.0020556,
        size.height * 0.5327179,
        size.width * 0.9858889,
        size.height * 0.4384615);
    path0.close();
    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class shape2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.9440000, size.height * 0.6000000);
    path0.cubicTo(
        size.width * 0.9390800,
        size.height * 0.4828400,
        size.width * 0.9334800,
        size.height * 0.4481200,
        size.width * 0.9240000,
        size.height * 0.3960000);
    path0.quadraticBezierTo(size.width * 0.9162000, size.height * 0.3448800,
        size.width * 0.8480000, size.height * 0.1960000);
    path0.quadraticBezierTo(size.width * 0.8120000, size.height * 0.1390000,
        size.width * 0.8000000, size.height * 0.1200000);
    path0.cubicTo(
        size.width * 0.7634400,
        size.height * 0.0676000,
        size.width * 0.6925600,
        size.height * 0.0031600,
        size.width * 0.6000000,
        0);
    path0.cubicTo(
        size.width * 0.5298800,
        size.height * 0.0045200,
        size.width * 0.4567200,
        size.height * 0.0136000,
        size.width * 0.4000000,
        size.height * 0.0360000);
    path0.cubicTo(
        size.width * 0.3383200,
        size.height * 0.0626400,
        size.width * 0.2469600,
        size.height * 0.1153600,
        size.width * 0.2000000,
        size.height * 0.1560000);
    path0.cubicTo(
        size.width * 0.1402400,
        size.height * 0.2144800,
        size.width * 0.0630400,
        size.height * 0.3151200,
        size.width * 0.0291200,
        size.height * 0.3948800);
    path0.cubicTo(
        size.width * 0.0094400,
        size.height * 0.4464000,
        size.width * -0.0068400,
        size.height * 0.5338400,
        size.width * 0.0040000,
        size.height * 0.5960000);
    path0.cubicTo(
        size.width * 0.0089200,
        size.height * 0.6475200,
        size.width * 0.0232400,
        size.height * 0.7414400,
        size.width * 0.0480000,
        size.height * 0.7960000);
    path0.cubicTo(
        size.width * 0.0666800,
        size.height * 0.8477600,
        size.width * 0.1211600,
        size.height * 0.9015200,
        size.width * 0.1937600,
        size.height * 0.9284800);
    path0.cubicTo(
        size.width * 0.2279200,
        size.height * 0.9445200,
        size.width * 0.3049200,
        size.height * 0.9828000,
        size.width * 0.4000000,
        size.height * 0.9760000);
    path0.cubicTo(
        size.width * 0.4510000,
        size.height * 0.9842000,
        size.width * 0.5348000,
        size.height * 0.9792800,
        size.width * 0.6040000,
        size.height * 0.9600000);
    path0.cubicTo(
        size.width * 0.6575600,
        size.height * 0.9546400,
        size.width * 0.7540400,
        size.height * 0.9363600,
        size.width * 0.8000000,
        size.height * 0.8960000);
    path0.cubicTo(
        size.width * 0.8346400,
        size.height * 0.8745600,
        size.width * 0.8720000,
        size.height * 0.8408000,
        size.width * 0.8960000,
        size.height * 0.7920000);
    path0.cubicTo(
        size.width * 0.9217200,
        size.height * 0.7485600,
        size.width * 0.9427200,
        size.height * 0.7305600,
        size.width * 0.9440000,
        size.height * 0.6000000);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// class CustomTrangle extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path0 = Path();
//     path0.moveTo(0, size.height * 0.9904762);
//     path0.cubicTo(
//         size.width * 0.6300000,
//         size.height * 0.9904762,
//         size.width * 0.6300000,
//         size.height * 0.9904762,
//         size.width * 0.8400000,
//         size.height * 0.9904762);
//     path0.cubicTo(
//         size.width * 0.8841333,
//         size.height * 0.9790476,
//         size.width * 0.9964333,
//         size.height * 0.8813333,
//         size.width,
//         size.height * 0.4666667);
//     path0.cubicTo(
//         size.width * 0.9919333,
//         size.height * 0.1420952,
//         size.width * 0.8946000,
//         size.height * 0.0169524,
//         size.width * 0.8333333,
//         0);
//     path0.quadraticBezierTo(size.width * 0.6250000, 0, 0, 0);
//     path0.quadraticBezierTo(
//         0, size.height * 0.2476190, 0, size.height * 0.9904762);
//     path0.close();

//     return path0;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

class CustomTrangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.0166667, size.height * 0.4900000);
    path0.cubicTo(
        size.width * 0.0279000,
        size.height * 0.3290000,
        size.width * 0.0313333,
        size.height * 0.1893000,
        size.width * 0.1300000,
        size.height * 0.0600000);
    path0.cubicTo(
        size.width * 0.3150000,
        size.height * 0.0575000,
        size.width * 0.6850000,
        size.height * 0.0525000,
        size.width * 0.8700000,
        size.height * 0.0500000);
    path0.cubicTo(
        size.width * 0.9700000,
        size.height * 0.1817000,
        size.width * 0.9798000,
        size.height * 0.3708000,
        size.width * 0.9833333,
        size.height * 0.4900000);
    path0.cubicTo(
        size.width * 0.9770667,
        size.height * 0.6304000,
        size.width * 0.9671667,
        size.height * 0.8149000,
        size.width * 0.8666667,
        size.height * 0.9400000);
    path0.cubicTo(
        size.width * 0.6875000,
        size.height * 0.9400000,
        size.width * 0.3291667,
        size.height * 0.9400000,
        size.width * 0.1500000,
        size.height * 0.9400000);
    path0.cubicTo(
        size.width * 0.0448667,
        size.height * 0.8461000,
        size.width * 0.0181667,
        size.height * 0.6535000,
        size.width * 0.0166667,
        size.height * 0.4900000);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Shape4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.1781818, size.height * 0.2437811);
    path0.cubicTo(
        size.width * 0.2250545,
        size.height * 0.1392040,
        size.width * 0.2718545,
        size.height * 0.0490050,
        size.width * 0.3600000,
        size.height * 0.0199005);
    path0.cubicTo(
        size.width * 0.4036000,
        size.height * -0.0046766,
        size.width * 0.4990909,
        size.height * 0.0087065,
        size.width * 0.5454545,
        size.height * 0.0049751);
    path0.cubicTo(
        size.width * 0.6157818,
        size.height * 0.0162189,
        size.width * 0.6845818,
        size.height * 0.0477114,
        size.width * 0.7272727,
        size.height * 0.0796020);
    path0.cubicTo(
        size.width * 0.8082545,
        size.height * 0.0954229,
        size.width * 0.8802909,
        size.height * 0.1703980,
        size.width * 0.9018182,
        size.height * 0.2487562);
    path0.quadraticBezierTo(size.width * 0.9118182, size.height * 0.3109453,
        size.width * 0.9418182, size.height * 0.4975124);
    path0.quadraticBezierTo(size.width * 0.9937091, size.height * 0.6756219,
        size.width * 0.9963636, size.height * 0.7412935);
    path0.cubicTo(
        size.width * 0.9862545,
        size.height * 0.7895522,
        size.width * 0.9592364,
        size.height * 0.8794527,
        size.width * 0.9090909,
        size.height * 0.9154229);
    path0.cubicTo(
        size.width * 0.8638909,
        size.height * 0.9764677,
        size.width * 0.7837091,
        size.height * 0.9937811,
        size.width * 0.7309091,
        size.height * 0.9900498);
    path0.quadraticBezierTo(size.width * 0.6163636, size.height * 0.9900498,
        size.width * 0.2727273, size.height * 0.9900498);
    path0.quadraticBezierTo(size.width * 0.1499182, size.height * 0.9768408,
        size.width * 0.1089818, size.height * 0.9724378);
    path0.cubicTo(
        size.width * 0.0615273,
        size.height * 0.9223383,
        size.width * 0.0248364,
        size.height * 0.8028358,
        size.width * 0.0145455,
        size.height * 0.7462687);
    path0.cubicTo(
        size.width * -0.0055636,
        size.height * 0.6763184,
        size.width * 0.0130909,
        size.height * 0.5545274,
        size.width * 0.0290909,
        size.height * 0.4975124);
    path0.cubicTo(
        size.width * 0.0663636,
        size.height * 0.4340796,
        size.width * 0.0663636,
        size.height * 0.4340796,
        size.width * 0.1781818,
        size.height * 0.2437811);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
