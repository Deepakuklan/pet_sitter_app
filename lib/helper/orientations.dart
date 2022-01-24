import 'package:flutter/material.dart';

class DeviceOrientation extends StatelessWidget {
  Widget portraitMode;

  Widget landscapeMode;

  DeviceOrientation(
      {Key? key, required this.landscapeMode, required this.portraitMode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return portraitMode;
        } else {
          return landscapeMode;
        }
      },
    ));
  }
}
