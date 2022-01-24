import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? containerWidth, containerHeight;
  final double containerspreadRadius, containerblurRadius;
  final Color? containerColor;
  final BorderRadiusGeometry? containerRadius;
  final BoxBorder? containerBorder;
  final Widget? containerWidget;
  final Offset containeroffset;
  final Color containerBoxShadowColor;
  final DecorationImage? containerImage;
  final Gradient? containerGradient;
  final EdgeInsetsGeometry containerMargin;
  final EdgeInsetsGeometry containerPadding;
  final Key? containerKey;

  const CustomContainer(
      {Key? key,
      this.containerWidth,
      this.containerHeight,
      this.containerColor,
      this.containerRadius,
      this.containerBorder,
      this.containerWidget,
      this.containerspreadRadius = 0.0,
      this.containerblurRadius = 0.0,
      this.containeroffset = const Offset(0, 0),
      this.containerBoxShadowColor = Colors.transparent,
      this.containerImage,
      this.containerGradient,
      this.containerMargin = EdgeInsets.zero,
      this.containerPadding = EdgeInsets.zero,
      this.containerKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: containerKey,
      margin: containerMargin,
      padding: containerPadding,
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
        color: containerColor,
        border: containerBorder,
        borderRadius: containerRadius,
        gradient: containerGradient,
        boxShadow: [
          BoxShadow(
            color: containerBoxShadowColor, //color of shadow
            spreadRadius: containerspreadRadius, //spread radius
            blurRadius: containerblurRadius, // blur radius
            offset: containeroffset, // changes position of shadow
          ),
        ],
        image: containerImage,
      ),
      child: containerWidget,
    );
  }
}
