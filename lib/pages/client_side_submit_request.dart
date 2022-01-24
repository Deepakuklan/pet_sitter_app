import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/mybutton.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';
import 'package:pet_sitter_app/helper/textformitems.dart';
import '../constant.dart';

class ClientSideSubmitRequest extends StatefulWidget {
  const ClientSideSubmitRequest({Key? key}) : super(key: key);

  @override
  _ClientSideSubmitRequestState createState() =>
      _ClientSideSubmitRequestState();
}

class _ClientSideSubmitRequestState extends State<ClientSideSubmitRequest> {
  bool onSelect = false;

  @override
  Widget build(BuildContext context) {
    return _mainCode();
  }

  Widget _mainCode() {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomContainer(
            containerWidth: double.maxFinite,
            containerWidget: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 34.h,
                  ),
                  _heading(),
                  SizedBox(
                    height: 11.h,
                  ),
                  _getClientAdvise(),
                  SizedBox(
                    height: 20.h,
                  ),
                  _getAddImageButton(),
                  SizedBox(
                    height: 30.h,
                  ),
                  _getRadioButtonHeadingText(),
                  SizedBox(
                    height: 8.h,
                  ),
                  _getCustomRadioButton(),
                  SizedBox(
                    height: 20.h,
                  ),
                  _getFormField(),
                  SizedBox(
                    height: 40.h,
                  ),
                  _bottomboxPortraint(),
                  SizedBox(
                    height: 36.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _heading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset("assets/icon/backbutton.png"),
            SizedBox(
              width: 29.5.w,
            ),
            UbuntuTextStyle(
              textData: 'My Availability',
              textAlign: TextAlign.left,
              textColor: const Color.fromRGBO(70, 209, 184, 1),
              textFontSize: 20.sm,
              textfontWeight: FontWeight.w700,
              textLines: 10,
            ),
          ],
        ),
        Image.asset(
          "assets/image/person2.png",
          width: 40.h,
          height: 40.h,
        ),
      ],
    );
  }

  _getClientAdvise() {
    return UbuntuTextStyle(
      textData:
          'Pet sitting services offered in yor own home are sales tax exempt, whereas pet sitting services offered in the sitter’s home are subject to standard sales tax rates',
      textAlign: TextAlign.left,
      textColor: const Color.fromRGBO(70, 209, 184, 1),
      textFontSize: 12.sm,
      textfontWeight: FontWeight.w400,
      textLines: 10,
    );
  }

  _getAddImageButton() {
    return DottedBorder(
      borderType: BorderType.RRect,
      color: kFF46D1B8, //color of dotted/dash line
      strokeWidth: 1, //thickness of dash/dots
      dashPattern: const [10, 6],
      radius: Radius.circular(15.r),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15.r)),
        child: CustomContainer(
          containerHeight: 100.h,
          containerWidth: 335.w,
          containerColor: const Color.fromRGBO(70, 209, 184, 0.15),
          containerRadius: BorderRadius.circular(15.r),
          containerWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon/Addbutton.png',
                fit: BoxFit.contain,
                height: 40.h,
                width: 40.h,
              ),
              SizedBox(
                height: 9.h,
              ),
              UbuntuTextStyle(
                textData: 'Add image',
                textAlign: TextAlign.left,
                textColor: const Color.fromRGBO(70, 209, 184, 1),
                textFontSize: 14.sm,
                textfontWeight: FontWeight.w400,
                textLines: 10,
              )
            ],
          ),
        ),
      ),
    );
  }

  _getCustomRadioButton() {
    return CustomContainer(
      containerHeight: 45.h,
      containerWidth: 335.w,
      containerColor: const Color.fromRGBO(255, 255, 255, 1),
      containerRadius: BorderRadius.circular(15.r),
      containerBoxShadowColor: const Color.fromRGBO(0, 0, 0, 0.08),
      containerblurRadius: 30,
      containerspreadRadius: 0,
      containeroffset: const Offset(0, 4),
      containerWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                onSelect = true;
              });
            },
            child: CustomContainer(
              containerHeight: 33.h,
              containerWidth: 161.w,
              containerColor: onSelect == true
                  ? const Color.fromRGBO(70, 209, 184, 1)
                  : const Color.fromRGBO(255, 255, 255, 1),
              containerRadius: BorderRadius.circular(15.r),
              containerWidget: Center(
                child: UbuntuTextStyle(
                    textData: "Own home",
                    textFontSize: 14.sm,
                    textfontWeight: FontWeight.w400,
                    textColor: onSelect == true
                        ? const Color.fromRGBO(255, 255, 255, 1)
                        : const Color.fromRGBO(70, 209, 184, 1),
                    textAlign: TextAlign.left,
                    textLines: 10),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                onSelect = false;
              });
            },
            child: CustomContainer(
              containerHeight: 33.h,
              containerWidth: 161.w,
              containerColor: onSelect == false
                  ? const Color.fromRGBO(70, 209, 184, 1)
                  : const Color.fromRGBO(255, 255, 255, 1),
              containerRadius: BorderRadius.circular(15.r),
              containerWidget: Center(
                child: UbuntuTextStyle(
                    textData: "Sitter’s home",
                    textFontSize: 14.sm,
                    textfontWeight: FontWeight.w400,
                    textColor: onSelect == false
                        ? const Color.fromRGBO(255, 255, 255, 1)
                        : const Color.fromRGBO(70, 209, 184, 1),
                    textAlign: TextAlign.left,
                    textLines: 10),
              ),
            ),
          )
        ],
      ),
    );
  }

  _getRadioButtonHeadingText() {
    return UbuntuTextStyle(
      textData: "Pet sitting at",
      textFontSize: 14.sm,
      textfontWeight: FontWeight.w400,
      textColor: const Color.fromRGBO(61, 61, 61, 1),
      textAlign: TextAlign.left,
      textLines: 10,
    );
  }

  _getFormField() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GetTextformdummy(
          itemsHint: "Pet Name",
          itemsLable: "Pet Name",
        ),
        SizedBox(
          height: 20.h,
        ),
        GetTextformdummy(
          itemsHint: "Enter location",
          itemsLable: "Location",
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: GetTextformdummy(
                itemsHint: "Age",
                itemsLable: "Age",
                keyBoardType: TextInputType.number,
                inputformatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  LengthLimitingTextInputFormatter(2),
                ],
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Expanded(
              child: GetTextformdummy(
                itemsHint: "Weight",
                itemsLable: "Weight",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        GetTextformdummy(
          itemsHint: "Breed",
          itemsLable: "Breed",
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: GetTextformdummy(
                itemsHint: "Select a date",
                itemsLable: "From",
                itemsSuffixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(
                    calendar,
                    fit: BoxFit.contain,
                    height: 10.h,
                    alignment: Alignment.topLeft,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Expanded(
              child: GetTextformdummy(
                itemsHint: "Select a date",
                itemsLable: "To",
                itemsSuffixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    calendar,
                    fit: BoxFit.contain,
                    height: 10.h,
                    alignment: Alignment.topLeft,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          child: GetTextformdummy(
            itemsHint: "Enter Decription",
            itemsLable: "Decription",
            maxlines: 5,
          ),
        ),
      ],
    );
  }

  _bottomboxPortraint() {
    return MyButton(
      buttonHeight: 40.h,
      buttonWidht: 180.w,
      buttonBorderRadius: 9.r,
      buttonBackGroundColorwithGradient: const LinearGradient(colors: [
        Color.fromRGBO(78, 206, 175, 1),
        Color.fromRGBO(99, 223, 193, 1),
      ]),
      buttonTextData: Center(
        child: UbuntuTextStyle(
          textData: 'Submit a request',
          textAlign: TextAlign.left,
          textColor: const Color.fromRGBO(255, 255, 255, 1),
          textFontSize: 16.sm,
          textfontWeight: FontWeight.w500,
          textLines: 10,
        ),
      ),
    );
  }
}
