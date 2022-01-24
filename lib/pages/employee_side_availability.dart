import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/calender/calendar.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/mybutton.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';

import '../constant.dart';
import 'term_condition.dart';

class EmployeeSideAvailabitiy extends StatefulWidget {
  const EmployeeSideAvailabitiy({Key? key}) : super(key: key);

  @override
  _EmployeeSideAvailabitiyState createState() =>
      _EmployeeSideAvailabitiyState();
}

class _EmployeeSideAvailabitiyState extends State<EmployeeSideAvailabitiy> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait
        ? _mainSmall()
        : _mainSmall();
  }

  Widget _mainSmall() {
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
                    height: 37.h,
                  ),
                  _heading(),
                  SizedBox(
                    height: 27.h,
                  ),
                  // _getCalander(),
                  _getEvent(),
                  SizedBox(
                    height: 21.h,
                  ),
                  _getDateSelector(),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: _bottomboxButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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

  _getEvent() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UbuntuTextStyle(
                textData: '''October''',
                textFontSize: 14.sm,
                textfontWeight: FontWeight.w400,
                textColor: const Color.fromRGBO(61, 61, 61, 1),
                textAlign: TextAlign.left,
                textLines: 10),
            Image.asset(
              'assets/icon/edit.png',
              width: 16.w,
              height: 16.h,
            )
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        CustomContainer(
          containerHeight: 40.h,
          containerWidth: 335.w,
          containerRadius: BorderRadius.circular(8.r),
          containerBorder: Border.all(
              color: const Color.fromRGBO(70, 209, 184, 1), width: 1.h),
          containerWidget: Padding(
            padding: EdgeInsets.only(
                top: 10.h, right: 14.w, bottom: 12.22.h, left: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icon/Calendar.png',
                      width: 16.w,
                      height: 16.h,
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    UbuntuTextStyle(
                        textData: '''Oct. 11 - 14''',
                        textFontSize: 14.sm,
                        textfontWeight: FontWeight.w500,
                        textColor: Color.fromRGBO(70, 209, 184, 1),
                        textAlign: TextAlign.left,
                        textLines: 10)
                  ],
                ),
                UbuntuTextStyle(
                    textData: '''Unavailable''',
                    textFontSize: 14.sm,
                    textfontWeight: FontWeight.w400,
                    textColor: Color.fromRGBO(70, 209, 184, 1),
                    textAlign: TextAlign.left,
                    textLines: 10)
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Stack(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 13.h),
                child: CustomContainer(
                  containerHeight: 32.h,
                  containerWidth: 150.w,
                  containerBoxShadowColor:
                      const Color.fromRGBO(78, 206, 175, 0.4),
                  containerblurRadius: 20,
                  containerRadius: BorderRadius.circular(9.r),
                ),
              ),
            ),
            Center(
              child: MyButton(
                buttonHeight: 43.h,
                buttonWidht: 188.w,
                buttonColor: const Color.fromRGBO(70, 209, 184, 1),
                buttonBorderRadius: 9.r,
                buttonBorderwitdh: 1.h,
                buttonTextData: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UbuntuTextStyle(
                          textData: '''+''',
                          textFontSize: 14.sm,
                          textfontWeight: FontWeight.w400,
                          textColor: const Color.fromRGBO(248, 253, 253, 1),
                          textAlign: TextAlign.left,
                          textLines: 10),
                      UbuntuTextStyle(
                          textData: '''Add Availability''',
                          textFontSize: 14.sm,
                          textfontWeight: FontWeight.w400,
                          textColor: const Color.fromRGBO(248, 253, 253, 1),
                          textAlign: TextAlign.left,
                          textLines: 10)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _getDateSelector() {
    return CustomContainer(
      containerWidth: 335.w,
      containerRadius: BorderRadius.circular(15.r),
      containerColor: const Color.fromRGBO(255, 255, 255, 1),
      containerblurRadius: 30.r,
      containeroffset: const Offset(0, 4),
      containerspreadRadius: 0,
      containerBoxShadowColor: const Color.fromRGBO(0, 0, 0, 0.08),
      containerWidget: Padding(
        padding:
            EdgeInsets.only(left: 18.w, top: 24.h, right: 18.w, bottom: 18.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UbuntuTextStyle(
                textData: '''Start Date''',
                textFontSize: 14.sm,
                textfontWeight: FontWeight.w400,
                textColor: const Color.fromRGBO(61, 61, 61, 1),
                textAlign: TextAlign.left,
                textLines: 20),
            SizedBox(
              height: 10.h,
            ),
            CustomContainer(
              containerHeight: 45.h,
              containerWidth: 289.w,
              containerRadius: BorderRadius.circular(8.r),
              containerBorder: Border.all(
                  color: const Color.fromRGBO(226, 226, 226, 1), width: 1.h),
              containerWidget: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UbuntuTextStyle(
                        textData: '''Wednesday, October 10''',
                        textFontSize: 12.sm,
                        textfontWeight: FontWeight.w400,
                        textColor: const Color.fromRGBO(61, 61, 61, 1),
                        textAlign: TextAlign.left,
                        textLines: 20),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                // return object of type Dialog
                                Center(
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomCalender(),
                                    ),
                                  ),
                                ));
                      },
                      child: Image.asset(
                        'assets/icon/Calendar.png',
                        width: 16.w,
                        height: 16.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 27.h,
            ),
            UbuntuTextStyle(
                textData: '''End Date''',
                textFontSize: 14.sm,
                textfontWeight: FontWeight.w400,
                textColor: const Color.fromRGBO(61, 61, 61, 1),
                textAlign: TextAlign.left,
                textLines: 20),
            SizedBox(
              height: 10.h,
            ),
            CustomContainer(
              containerHeight: 45.h,
              containerWidth: 289.w,
              containerRadius: BorderRadius.circular(8.r),
              containerBorder: Border.all(
                  color: const Color.fromRGBO(226, 226, 226, 1), width: 1.h),
              containerWidget: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UbuntuTextStyle(
                        textData: '''Wednesday, October 10''',
                        textFontSize: 12.sm,
                        textfontWeight: FontWeight.w400,
                        textColor: const Color.fromRGBO(61, 61, 61, 1),
                        textAlign: TextAlign.left,
                        textLines: 20),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                // return object of type Dialog
                                Center(
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomCalender(),
                                    ),
                                  ),
                                ));
                      },
                      child: Image.asset(
                        'assets/icon/Calendar.png',
                        width: 16.w,
                        height: 16.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            _getBottomButtonSmall()
          ],
        ),
      ),
    );
  }

  _getBottomButtonSmall() {
    return CustomContainer(
      // containerWidth: 335.w,
      containerWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TermsAndConditions(),
              ),
            ),
            child: MyButton(
              buttonHeight: 40.h,
              buttonWidht: 132.w,
              buttonBorderRadius: 9.r,
              buttonTextData: Center(
                child: UbuntuTextStyle(
                  textColor: Colors.white,
                  textFontSize: 16.sm,
                  textfontWeight: FontWeight.w400,
                  textData: 'Save',
                  textAlign: TextAlign.center,
                  textLines: 10,
                ),
              ),
              buttonBackGroundColorwithGradient: const LinearGradient(
                colors: [
                  Color(0xff4ECEAF),
                  Color(0xff63DFC1),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 21.w,
          ),
          MyButton(
            buttonHeight: 40.h,
            buttonWidht: 132.w,
            buttonBorderRadius: 9.r,
            buttonBorderColor: const Color(0xff46D1B8),
            buttonBorderwitdh: 1.0.w,
            buttonTextData: Center(
              child: UbuntuTextStyle(
                textColor: const Color(0xff46D1B8),
                textFontSize: 16.sm,
                textfontWeight: FontWeight.w400,
                textData: 'Cancel',
                textAlign: TextAlign.center,
                textLines: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _bottomboxButton() {
    return CustomContainer(
      containerHeight: 60.h,
      containerWidth: 335.w,
      containerRadius: BorderRadius.all(
        Radius.circular(16.r),
      ),
      containeroffset: const Offset(0, 4),
      containerspreadRadius: 0,
      containerblurRadius: 25.r,
      containerColor: Colors.white,
      containerBoxShadowColor: kBlackColor.withOpacity(0.01),
      containerWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    search,
                    width: 17.6,
                    height: 18,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  UbuntuTextStyle(
                    textAlign: TextAlign.left,
                    textColor: kFF46D1B8,
                    textFontSize: 10.sm,
                    textfontWeight: FontWeight.w400,
                    textLines: 10,
                    textData: 'Explore',
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    bag,
                    height: 15.97.h,
                    width: 15.97.w,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  UbuntuTextStyle(
                    textAlign: TextAlign.left,
                    textColor: const Color(0xffC0C0C0),
                    textFontSize: 10.sm,
                    textfontWeight: FontWeight.w400,
                    textLines: 10,
                    textData: 'My Availability',
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
