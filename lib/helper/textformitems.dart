import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_sitter_app/constant.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';

// ignore: must_be_immutable
class GetTextformdummy extends StatefulWidget {
  String itemsLable, itemsHint;
  final bool obscureText;
  final Widget? itemsPreFixIcon, itemsSuffixIcon;
  final TextInputType? keyBoardType;
  final List<TextInputFormatter>? inputformatters;
  final int? maxlines;

  GetTextformdummy(
      {Key? key,
      this.itemsHint = "",
      this.itemsLable = "",
      this.itemsPreFixIcon,
      this.itemsSuffixIcon,
      this.obscureText = false,
      this.keyBoardType,
      this.inputformatters,
      this.maxlines})
      : super(key: key);

  @override
  State<GetTextformdummy> createState() => _GetTextformdummyState();
}

class _GetTextformdummyState extends State<GetTextformdummy> {
  String? ontap = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UbuntuTextStyle(
          textAlign: TextAlign.left,
          textColor: kFF3D3D3D,
          textData: widget.itemsLable,
          textFontSize: 14.sm,
          textfontWeight: FontWeight.w800,
          textLines: 10,
        ),
        SizedBox(
          height: 15.h,
        ),
        TextFormField(
          maxLines: widget.maxlines,
          keyboardType: widget.keyBoardType,
          inputFormatters: widget.inputformatters,
          onChanged: (input) {
            setState(() {
              ontap = input;
            });
          },
          obscureText: widget.obscureText,
          // controller: username,
          style: GoogleFonts.ubuntu(
            textStyle: TextStyle(
                fontSize: 13.sm, color: kFF46D1B8, fontWeight: FontWeight.w700),
          ),
          decoration: InputDecoration(
            fillColor: ontap!.isEmpty ? kWhiteColor : kFFF4FFFA,
            filled: true,
            // hoverColor: Colors.green,
            // focusColor: Colors.red,
            hintText: widget.itemsHint,

            hintStyle: TextStyle(
                fontSize: 12.sm, color: kFF888888, fontWeight: FontWeight.w400),
            prefixIcon: widget.itemsPreFixIcon,
            suffixIcon: widget.itemsSuffixIcon,
            border: _borderColor(),
            enabledBorder:
                ontap!.isNotEmpty ? _enabledBorder() : _borderColor(),
            focusedBorder: _focusedBorder(),
          ),
        ),
      ],
    );
  }

// textform feild border
  OutlineInputBorder _borderColor() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: Color.fromRGBO(200, 200, 200, 1),
        width: 0.5,
      ),
    );
  }

  OutlineInputBorder _enabledBorder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      borderSide: BorderSide(
        color: kFF46D1B8,
        width: 0.5.w,
      ),
    );
  }

  OutlineInputBorder _focusedBorder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      borderSide: BorderSide(
        color: kFF46D1B8,
        width: 0.5.w,
      ),
    );
  }
}
