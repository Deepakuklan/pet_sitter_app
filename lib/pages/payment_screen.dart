import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/mybutton.dart';
import 'package:pet_sitter_app/helper/ripple_animation.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';
import 'package:pet_sitter_app/helper/textformitems.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                            containerHeight: 602.h,
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
                                    _getLocationDate(),
                                    SizedBox(
                                      height: 24.h,
                                    ),
                                    _getPaymentAndReward(),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    _getDivider(),
                                    SizedBox(
                                      height: 17.h,
                                    ),
                                    _getCardDetail(),
                                    SizedBox(
                                      height: 49.h,
                                    ),
                                  ],
                                ),
                              ),
                              _getBottomButton(),
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

  _getLocationDate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UbuntuTextStyle(
                  textData: "Location",
                  textFontSize: 14.sm,
                  textfontWeight: FontWeight.w800,
                  textColor: const Color.fromRGBO(61, 61, 61, 1),
                  textAlign: TextAlign.left,
                  textLines: 20),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/icon/Location.png",
                    height: 18.h,
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  UbuntuTextStyle(
                      textData: "Pet Sitter’s Home",
                      textFontSize: 12.sm,
                      textfontWeight: FontWeight.w400,
                      textColor: const Color.fromRGBO(61, 61, 61, 1),
                      textAlign: TextAlign.left,
                      textLines: 20),
                ],
              )
            ],
          ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UbuntuTextStyle(
                  textData: "Date",
                  textFontSize: 14.sm,
                  textfontWeight: FontWeight.w800,
                  textColor: const Color.fromRGBO(61, 61, 61, 1),
                  textAlign: TextAlign.left,
                  textLines: 20),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/icon/Calendar.png",
                    height: 18.h,
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  UbuntuTextStyle(
                      textData: "Nov. 10 - Nov. 15",
                      textFontSize: 12.sm,
                      textfontWeight: FontWeight.w400,
                      textColor: const Color.fromRGBO(61, 61, 61, 1),
                      textAlign: TextAlign.left,
                      textLines: 20),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  _getBottomButton() {
    return GestureDetector(
      onTap: () {
        _getPopMsg();
      },
      child: CustomContainer(
        // containerWidth: 335.w,
        containerWidget: MyButton(
          buttonHeight: 40.h,
          buttonWidht: 160.w,
          buttonBorderRadius: 9.r,
          buttonTextData: Center(
            child: UbuntuTextStyle(
              textColor: Colors.white,
              textFontSize: 16.sm,
              textfontWeight: FontWeight.w400,
              textData: 'Make Payment',
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
    );
  }

  _getPaymentAndReward() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //left
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UbuntuTextStyle(
                  textData: "Payment Summary",
                  textFontSize: 14.sm,
                  textfontWeight: FontWeight.w800,
                  textColor: const Color.fromRGBO(61, 61, 61, 1),
                  textAlign: TextAlign.left,
                  textLines: 20),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  UbuntuTextStyle(
                      textData: "\$35 per day",
                      textFontSize: 12.sm,
                      textfontWeight: FontWeight.w400,
                      textColor: const Color.fromRGBO(61, 61, 61, 1),
                      textAlign: TextAlign.left,
                      textLines: 20),
                  UbuntuTextStyle(
                      textData: "x5",
                      textFontSize: 12.sm,
                      textfontWeight: FontWeight.w400,
                      textColor: const Color.fromRGBO(61, 61, 61, 1),
                      textAlign: TextAlign.left,
                      textLines: 20),
                  UbuntuTextStyle(
                      textData: "= \$175",
                      textFontSize: 12.sm,
                      textfontWeight: FontWeight.w400,
                      textColor: const Color.fromRGBO(61, 61, 61, 1),
                      textAlign: TextAlign.left,
                      textLines: 20),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 50.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UbuntuTextStyle(
                        textData: "Rewards",
                        textFontSize: 12.sm,
                        textfontWeight: FontWeight.w400,
                        textColor: const Color.fromRGBO(143, 143, 143, 1),
                        textAlign: TextAlign.left,
                        textLines: 20),
                    UbuntuTextStyle(
                        textData: "- \$10",
                        textFontSize: 12.sm,
                        textfontWeight: FontWeight.w400,
                        textColor: const Color.fromRGBO(143, 143, 143, 1),
                        textAlign: TextAlign.left,
                        textLines: 20),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              //divider
              CustomContainer(
                containerHeight: 1.h,
                containerWidth: 100.w,
                containerGradient: const LinearGradient(
                  colors: [
                    Color(0x0046D1B8),
                    Color(0xff46D1B8),
                    Color(0x0046D1B8)
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),

              Padding(
                padding: EdgeInsets.only(right: 50.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UbuntuTextStyle(
                        textData: "Total",
                        textFontSize: 12.sm,
                        textfontWeight: FontWeight.w500,
                        textColor: const Color.fromRGBO(61, 61, 61, 1),
                        textAlign: TextAlign.left,
                        textLines: 20),
                    UbuntuTextStyle(
                        textData: "= \$185",
                        textFontSize: 12.sm,
                        textfontWeight: FontWeight.w400,
                        textColor: const Color.fromRGBO(61, 61, 61, 1),
                        textAlign: TextAlign.left,
                        textLines: 20),
                  ],
                ),
              ),
            ],
          ),
        ),

        //rightside
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UbuntuTextStyle(
                  textData: "Rewards",
                  textFontSize: 14.sm,
                  textfontWeight: FontWeight.w800,
                  textColor: const Color.fromRGBO(61, 61, 61, 1),
                  textAlign: TextAlign.left,
                  textLines: 20),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  UbuntuTextStyle(
                      textData: "\$10.00",
                      textFontSize: 12.sm,
                      textfontWeight: FontWeight.w400,
                      textColor: const Color.fromRGBO(61, 61, 61, 1),
                      textAlign: TextAlign.left,
                      textLines: 20),
                ],
              ),
              SizedBox(
                height: 9.h,
              ),

              //button
              CustomContainer(
                containerHeight: 35.h,
                containerWidth: 113.w,
                containerRadius: BorderRadius.circular(9.r),
                containerGradient: const LinearGradient(colors: [
                  Color.fromRGBO(78, 206, 175, 0.1),
                  Color.fromRGBO(99, 223, 193, 0.1),
                ]),
                containerWidget: Center(
                  child: UbuntuTextStyle(
                      textData: "Apply Rewards",
                      textFontSize: 14.sm,
                      textfontWeight: FontWeight.w400,
                      textColor: const Color.fromRGBO(78, 206, 175, 1),
                      textAlign: TextAlign.left,
                      textLines: 20),
                ),
              )
            ],
          ),
        )
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

  _getCardDetail() {
    return Column(
      children: [
        //Cardholder Name
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/icon/user.png",
                      height: 18.h,
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    UbuntuTextStyle(
                        textData: "Cardholder Name",
                        textFontSize: 14.sm,
                        textfontWeight: FontWeight.w800,
                        textColor: const Color.fromRGBO(61, 61, 61, 1),
                        textAlign: TextAlign.left,
                        textLines: 20),
                  ],
                ),
                Row(
                  children: [
                    UbuntuTextStyle(
                        textData: "Powered by",
                        textFontSize: 10.sm,
                        textfontWeight: FontWeight.w500,
                        textColor: const Color.fromRGBO(61, 61, 61, 1),
                        textAlign: TextAlign.left,
                        textLines: 20),
                    Image.asset(
                      "assets/icon/Stripe_Logo.png",
                      height: 18.h,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            GetTextformdummy(
              itemsHint: "Enter name",
            ),
          ],
        ),

        SizedBox(
          height: 15.h,
        ),

        //Cardholder Name
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/icon/card.png",
                      height: 18.h,
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    UbuntuTextStyle(
                        textData: "Card Number",
                        textFontSize: 14.sm,
                        textfontWeight: FontWeight.w800,
                        textColor: const Color.fromRGBO(61, 61, 61, 1),
                        textAlign: TextAlign.left,
                        textLines: 20),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            GetTextformdummy(
              itemsHint: "Enter Number",
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),

        Row(
          children: [
            //Cardholder Name
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/icon/calendar-2.png",
                            height: 18.h,
                          ),
                          SizedBox(
                            width: 7.w,
                          ),
                          UbuntuTextStyle(
                              textData: "Exp. Date",
                              textFontSize: 14.sm,
                              textfontWeight: FontWeight.w800,
                              textColor: const Color.fromRGBO(61, 61, 61, 1),
                              textAlign: TextAlign.left,
                              textLines: 20),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  GetTextformdummy(
                    itemsHint: "XX/XX",
                  )
                ],
              ),
            ),

            SizedBox(
              width: 15.w,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/icon/card-tick.png",
                            height: 18.h,
                          ),
                          SizedBox(
                            width: 7.w,
                          ),
                          UbuntuTextStyle(
                              textData: "CVV",
                              textFontSize: 14.sm,
                              textfontWeight: FontWeight.w800,
                              textColor: const Color.fromRGBO(61, 61, 61, 1),
                              textAlign: TextAlign.left,
                              textLines: 20),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  GetTextformdummy(
                    itemsHint: "XXX",
                  )
                ],
              ),
            ),
          ],
        )
      ],
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
                            containerHeight: 670.h,
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
                                    _getLocationDate(),
                                    SizedBox(
                                      height: 24.h,
                                    ),
                                    _getPaymentAndReward(),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    _getDivider(),
                                    SizedBox(
                                      height: 17.h,
                                    ),
                                    _getCardDetail(),
                                    SizedBox(
                                      height: 49.h,
                                    ),
                                  ],
                                ),
                              ),
                              _getBottomButton(),
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

  _getPopMsg() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Column(
                children: [
                  SizedBox(
                    height: 58.h,
                  ),
                  const RippleAnimation(),
                  SizedBox(
                    height: 36.h,
                  ),
                  PoppinsTextStyle(
                      textData: "Payment Complete",
                      textFontSize: 14.sp,
                      textfontWeight: FontWeight.w600,
                      textColor: const Color.fromRGBO(78, 206, 175, 1),
                      textAlign: TextAlign.center,
                      textLines: 10),
                  SizedBox(
                    height: 36.h,
                  ),
                  _getDivider(),
                  SizedBox(
                    height: 16.h,
                  ),
                  PoppinsTextStyle(
                      textData:
                          "You are set for pet sitting services. Thank you!",
                      textFontSize: 12.sp,
                      textfontWeight: FontWeight.w400,
                      textColor: const Color.fromRGBO(94, 94, 94, 1),
                      textAlign: TextAlign.center,
                      textLines: 10),
                  SizedBox(
                    height: 30.h,
                  ),
                  _getAlertDialogBottomButton()
                ],
              ),
            ),
            // usually buttons at the bottom of the dialog
          ],
        );
      },
    );
  }

  _getAlertDialogBottomButton() {
    return GestureDetector(
      onTap: () {
        _getPopMsg();
      },
      child: CustomContainer(
        // containerWidth: 335.w,
        containerWidget: MyButton(
          buttonHeight: 40.h,
          buttonWidht: 160.w,
          buttonBorderRadius: 9.r,
          buttonTextData: Center(
            child: UbuntuTextStyle(
              textColor: Colors.white,
              textFontSize: 16.sm,
              textfontWeight: FontWeight.w400,
              textData: 'Make Payment',
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
    );
  }
}
