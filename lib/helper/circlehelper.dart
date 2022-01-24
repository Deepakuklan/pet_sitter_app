import 'package:flutter/material.dart';

class Circlehelper extends StatelessWidget {
  final Gradient? circleGradientColor;
  final double circleWidht;
  final double circleHeight;
  final Color? circlesingleColor;
  final double circleBoxShadowblurRadius;
  final Color circleBoxShadowcColor;

  const Circlehelper({
    Key? key,
    required this.circleWidht,
    required this.circleHeight,
    this.circleGradientColor,
    this.circlesingleColor,
    this.circleBoxShadowblurRadius = 0,
    this.circleBoxShadowcColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: circleWidht,
      height: circleHeight,
      decoration: BoxDecoration(
        gradient: circleGradientColor,
        shape: BoxShape.circle,
        color: circlesingleColor,
        boxShadow: [
          BoxShadow(
            color: circleBoxShadowcColor,
            blurRadius: circleBoxShadowblurRadius, // soften the shadow
            // spreadRadius: 7.0, //extend the shadow
            // offset: Offset(
            //   5.0, // Move to right 10  horizontally
            //   5.0, // Move to bottom 5 Vertically
            // ),
          )
        ],
      ),
    );
  }
}
