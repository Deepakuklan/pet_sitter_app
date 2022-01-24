import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/mybutton.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';

class ManagerSideEmployeeAvailability extends StatefulWidget {
  const ManagerSideEmployeeAvailability({Key? key}) : super(key: key);

  @override
  _ManagerSideEmployeeAvailabilityState createState() =>
      _ManagerSideEmployeeAvailabilityState();
}

class _ManagerSideEmployeeAvailabilityState
    extends State<ManagerSideEmployeeAvailability> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait
        ? _mainSmall()
        : _mainBig();
  }

  _mainSmall() {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomContainer(
              containerWidth: double.maxFinite,
              containerWidget: Column(
                children: [
                  Stack(
                    children: [
                      CustomContainer(
                        containerWidth: 375.w,
                        containerHeight: 303.h,
                        containerColor: const Color.fromRGBO(70, 209, 184, 1),
                        containerRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.r),
                            bottomRight: Radius.circular(15.r)),
                      ),
                      Center(
                        child: CustomContainer(
                            containerMargin: EdgeInsets.only(top: 152.h),
                            containerWidth: 335.w,
                            containerHeight: 516.h,
                            containeroffset: const Offset(0, 4),
                            containerblurRadius: 30.r,
                            containerBoxShadowColor:
                                const Color.fromRGBO(0, 0, 0, 0.08),
                            containerColor:
                                const Color.fromRGBO(255, 255, 255, 1),
                            containerRadius: BorderRadius.circular(15.r)),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: CustomContainer(
                          containerWidth: 335.w,
                          containerWidget: Column(
                            children: [
                              _getheading(),
                              SizedBox(
                                height: 27.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Column(
                                  children: [
                                    _getProfileImage(),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    _getprofileData(),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    _getContactDetail(),
                                    SizedBox(
                                      height: 24.h,
                                    ),
                                    _getDivider(),
                                    SizedBox(
                                      height: 24.h,
                                    ),
                                    _getAvailability()
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 120.h,
                              ),
                              _getBottomButtonSmall(),
                              SizedBox(
                                height: 30.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }

  _mainBig() {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomContainer(
              containerWidth: double.maxFinite,
              containerWidget: Column(
                children: [
                  Stack(
                    children: [
                      CustomContainer(
                        containerWidth: 375.w,
                        containerHeight: 303.h,
                        containerColor: const Color.fromRGBO(70, 209, 184, 1),
                        containerRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.r),
                            bottomRight: Radius.circular(15.r)),
                      ),
                      Center(
                        child: CustomContainer(
                            containerMargin: EdgeInsets.only(top: 152.h),
                            containerWidth: 335.w,
                            containerHeight: 550.h,
                            containeroffset: const Offset(0, 4),
                            containerblurRadius: 30.r,
                            containerBoxShadowColor:
                                const Color.fromRGBO(0, 0, 0, 0.08),
                            containerColor:
                                const Color.fromRGBO(255, 255, 255, 1),
                            containerRadius: BorderRadius.circular(15.r)),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: CustomContainer(
                          containerWidth: 335.w,
                          containerWidget: Column(
                            children: [
                              _getheading(),
                              SizedBox(
                                height: 27.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Column(
                                  children: [
                                    _getProfileImage(),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    _getprofileData(),
                                    SizedBox(
                                      height: 25.h,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                              SizedBox(
                                height: 30.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }

  _getheading() {
    return CustomContainer(
      containerMargin: EdgeInsets.only(
        top: 37.h,
      ),
      containerWidget: Row(
        children: [
          Image.asset(
            "assets/icon/backbutton.png",
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
          SizedBox(
            width: 74.5.h,
          ),

          //name
          UbuntuTextStyle(
              textData: "Pet Sitter Details",
              textFontSize: 20.sm,
              textfontWeight: FontWeight.w700,
              textColor: const Color.fromRGBO(255, 255, 255, 1),
              textAlign: TextAlign.left,
              textLines: 10),
        ],
      ),
    );
  }

  _getProfileImage() {
    return CustomContainer(
      containerWidth: 139.h,
      containerHeight: 139.h,
      containerRadius: BorderRadius.circular(100.r),
      containerBorder:
          Border.all(color: const Color.fromRGBO(70, 209, 184, 1), width: 3.h),
      containerImage: const DecorationImage(
          image: AssetImage("assets/image/person4.jpg"), fit: BoxFit.fill),
    );
  }

  _getprofileData() {
    return Column(
      children: [
        //name
        UbuntuTextStyle(
            textData: "Ralph Edwards",
            textFontSize: 16.sm,
            textfontWeight: FontWeight.w500,
            textColor: const Color.fromRGBO(61, 61, 61, 1),
            textAlign: TextAlign.left,
            textLines: 10),
        SizedBox(
          height: 5.h,
        ),

        //location
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icon/laction_icon.png"),
            SizedBox(
              width: 9.92.w,
              height: 11.66.h,
            ),
            UbuntuTextStyle(
              textData: "Houston",
              textAlign: TextAlign.left,
              textColor: const Color.fromRGBO(61, 61, 61, 1),
              textFontSize: 12.sm,
              textfontWeight: FontWeight.w400,
              textLines: 10,
            ),
          ],
        ),
      ],
    );
  }

  _getContactDetail() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/icon/phone.png",
              height: 13.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            UbuntuTextStyle(
                textData: "9876543210",
                textFontSize: 12.sm,
                textfontWeight: FontWeight.w400,
                textColor: const Color.fromRGBO(61, 61, 61, 1),
                textAlign: TextAlign.left,
                textLines: 10),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/icon/mail.png",
              height: 13.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            UbuntuTextStyle(
                textData: "ralphedwards 123@gmail.com",
                textFontSize: 12.sm,
                textfontWeight: FontWeight.w400,
                textColor: const Color.fromRGBO(61, 61, 61, 1),
                textAlign: TextAlign.left,
                textLines: 10),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/icon/cake.png",
              height: 13.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            UbuntuTextStyle(
                textData: "October 23, 1993",
                textFontSize: 12.sm,
                textfontWeight: FontWeight.w400,
                textColor: const Color.fromRGBO(61, 61, 61, 1),
                textAlign: TextAlign.left,
                textLines: 10),
          ],
        ),
      ],
    );
  }

  _getDivider() {
    return CustomContainer(
      containerHeight: 1.h,
      containerWidth: 302.w,
      containerGradient: const LinearGradient(
        colors: [Color(0x0046D1B8), Color(0xff46D1B8), Color(0x0046D1B8)],
      ),
    );
  }

  _getAvailability() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            UbuntuTextStyle(
                textData: "Availability",
                textFontSize: 14.sm,
                textfontWeight: FontWeight.w400,
                textColor: const Color.fromRGBO(61, 61, 61, 1),
                textAlign: TextAlign.left,
                textLines: 10),
          ],
        ),
        SizedBox(
          height: 13.h,
        ),

        //Available
        CustomContainer(
          containerHeight: 40.h,
          containerWidth: 335.w,
          containerRadius: BorderRadius.circular(8.r),
          containerColor: Color.fromRGBO(70, 209, 184, 1),
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
                      color: Color.fromRGBO(255, 255, 255, 1),
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
                        textColor: Color.fromRGBO(255, 255, 255, 1),
                        textAlign: TextAlign.left,
                        textLines: 10)
                  ],
                ),
                UbuntuTextStyle(
                    textData: '''Available''',
                    textFontSize: 14.sm,
                    textfontWeight: FontWeight.w400,
                    textColor: const Color.fromRGBO(255, 255, 255, 1),
                    textAlign: TextAlign.left,
                    textLines: 10)
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        //UnAvailable
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
                    textColor: const Color.fromRGBO(70, 209, 184, 1),
                    textAlign: TextAlign.left,
                    textLines: 10)
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        //UnAvailable
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
                    textColor: const Color.fromRGBO(70, 209, 184, 1),
                    textAlign: TextAlign.left,
                    textLines: 10)
              ],
            ),
          ),
        ),
      ],
    );
  }

  _getBottomButtonSmall() {
    return CustomContainer(
      // containerWidth: 335.w,
      containerWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
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
}
