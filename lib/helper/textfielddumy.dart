import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class Textd {
//   final String? textData;
//   final double? fontSizeData;
//   final FontWeight? fontWeightData;
//   final Color? colorData;
//   final TextAlign? textAlignData;
//   final FontStyle textFontStyle;
//   final TextDecoration textTextDecoration;

//   Textd({
//     this.colorData,
//     this.fontSizeData,
//     this.fontWeightData,
//     this.textData,
//     this.textAlignData,
//     this.textFontStyle = FontStyle.normal,
//     this.textTextDecoration = TextDecoration.none,
//   });
// }

// google font  Ubuntu
class UbuntuTextStyle extends StatelessWidget {
  final String textData;
  final double textFontSize;
  final FontWeight textfontWeight;
  final Color textColor;
  final TextAlign textAlign;
  final FontStyle textFontStyle;
  final TextDecoration textTextDecoration;
  final int textLines;

  const UbuntuTextStyle({
    Key? key,
    required this.textData,
    this.textFontStyle = FontStyle.normal,
    this.textTextDecoration = TextDecoration.none,
    required this.textFontSize,
    required this.textfontWeight,
    required this.textColor,
    required this.textAlign,
    required this.textLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: GoogleFonts.ubuntu(
        textStyle: TextStyle(
          fontSize: textFontSize,
          fontWeight: textfontWeight,
          color: textColor,
          fontStyle: textFontStyle,
          decoration: textTextDecoration,
        ),
      ),
      textAlign: textAlign,
      maxLines: textLines,
    );
  }
}

// google font  Poppins

class PoppinsTextStyle extends StatelessWidget {
  final String textData;
  final double textFontSize;
  final FontWeight textfontWeight;
  final Color textColor;
  final TextAlign textAlign;
  final FontStyle textFontStyle;
  final TextDecoration textTextDecoration;
  final int textLines;

  const PoppinsTextStyle({
    Key? key,
    required this.textData,
    this.textFontStyle = FontStyle.normal,
    this.textTextDecoration = TextDecoration.none,
    required this.textFontSize,
    required this.textfontWeight,
    required this.textColor,
    required this.textAlign,
    required this.textLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: textFontSize,
          fontWeight: textfontWeight,
          color: textColor,
          fontStyle: textFontStyle,
          decoration: textTextDecoration,
        ),
      ),
      textAlign: textAlign,
      maxLines: textLines,
    );
  }
}

// google font  Poppins

class MontserratTextStyle extends StatelessWidget {
  final String textData;
  final double textFontSize;
  final FontWeight textfontWeight;
  final Color textColor;
  final TextAlign textAlign;
  final FontStyle textFontStyle;
  final TextDecoration textTextDecoration;
  final int textLines;

  const MontserratTextStyle({
    Key? key,
    required this.textData,
    this.textFontStyle = FontStyle.normal,
    this.textTextDecoration = TextDecoration.none,
    required this.textFontSize,
    required this.textfontWeight,
    required this.textColor,
    required this.textAlign,
    required this.textLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: textFontSize,
          fontWeight: textfontWeight,
          color: textColor,
          fontStyle: textFontStyle,
          decoration: textTextDecoration,
        ),
      ),
      textAlign: textAlign,
      maxLines: textLines,
    );
  }
}
