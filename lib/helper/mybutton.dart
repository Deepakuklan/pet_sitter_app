import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double? buttonHeight, buttonWidht;
  final double buttonBorderRadius;
  final double buttonBorderwitdh;
  final Widget buttonTextData;
  final Gradient? buttonBackGroundColorwithGradient;
  final Color? buttonColor;
  final Color buttonBorderColor;

  final Offset buttonffset;
  final Color buttonBoxShadowColor;
  final double buttonSpreadRadius, buttonBlurRadius;

  const MyButton({
    Key? key,
    this.buttonHeight,
    this.buttonWidht,
    this.buttonBorderRadius = 0,
    this.buttonBackGroundColorwithGradient,
    required this.buttonTextData,
    this.buttonColor,
    this.buttonBorderColor = Colors.transparent,
    this.buttonBorderwitdh = 1.0,
    this.buttonffset = const Offset(0, 0),
    this.buttonBoxShadowColor = Colors.transparent,
    this.buttonSpreadRadius = 0,
    this.buttonBlurRadius = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonBorderRadius),
        gradient: buttonBackGroundColorwithGradient,
        color: buttonColor,
        boxShadow: [
          BoxShadow(
            color: buttonBoxShadowColor, //color of shadow
            spreadRadius: buttonSpreadRadius, //spread radius
            blurRadius: buttonBlurRadius, // blur radius
            offset: buttonffset, // changes position of shadow
          ),
        ],
        border: Border.all(
          color: buttonBorderColor,
          width: buttonBorderwitdh,
        ),
      ),
      height: buttonHeight,
      width: buttonWidht,
      child: buttonTextData,
    );
  }
}
