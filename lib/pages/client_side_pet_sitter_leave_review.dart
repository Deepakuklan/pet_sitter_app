import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/mybutton.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';

class ClientSidePetSitterLeaveReview extends StatefulWidget {
  const ClientSidePetSitterLeaveReview({Key? key}) : super(key: key);

  @override
  _ClientSidePetSitterLeaveReviewState createState() =>
      _ClientSidePetSitterLeaveReviewState();
}

class _ClientSidePetSitterLeaveReviewState
    extends State<ClientSidePetSitterLeaveReview> {
  String ratingTitle = "";

  int ratingValue3 = 0;

  int ratingValue2 = 0;

  int ratingValue1 = 0;

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
                                    _getRatingBar1(ratingTitle =
                                        "How well did they take care of your pet?"),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    _getRatingBar2(
                                        ratingTitle = "Would you recommend?"),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    _getRatingBar3(
                                        ratingTitle = "Would you hire again?"),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    _getCommentsBox()
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50.h,
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

  _getBottomButton() {
    return GestureDetector(
      onTap: () {},
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
                                    _getRatingBar1(ratingTitle =
                                        "How well did they take care of your pet?"),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    _getRatingBar2(
                                        ratingTitle = "Would you recommend?"),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    _getRatingBar3(
                                        ratingTitle = "Would you hire again?"),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    _getCommentsBox()
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50.h,
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

  _getRatingBar1(ratingTitle) {
    return CustomContainer(
      containerWidth: 303.w,
      containerHeight: 82.h,
      containerRadius: BorderRadius.circular(8.r),
      containerblurRadius: 30.r,
      containerspreadRadius: 0,
      containeroffset: const Offset(0, 4),
      containerBorder: Border.all(
          color: const Color.fromRGBO(70, 209, 184, 1), width: 0.5.h),
      containerWidget: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UbuntuTextStyle(
                textData: ratingTitle,
                textFontSize: 14.sm,
                textfontWeight: FontWeight.w700,
                textColor: const Color.fromRGBO(61, 61, 61, 1),
                textAlign: TextAlign.left,
                textLines: 10),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RatingBar.builder(
                  initialRating: 0,
                  itemCount: 5,
                  direction: Axis.horizontal,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: const Color.fromRGBO(70, 209, 184, 1),
                    size: 30.h,
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                      ratingValue1 = rating.toInt();
                    });
                  },
                ),
                UbuntuTextStyle(
                    textData: "(5/$ratingValue1)",
                    textFontSize: 14.sm,
                    textfontWeight: FontWeight.w700,
                    textColor: const Color.fromRGBO(61, 61, 61, 1),
                    textAlign: TextAlign.left,
                    textLines: 10),
              ],
            )
          ],
        ),
      ),
    );
  }

  _getRatingBar2(ratingTitle) {
    return CustomContainer(
      containerWidth: 303.w,
      containerHeight: 82.h,
      containerRadius: BorderRadius.circular(8.r),
      containerblurRadius: 30.r,
      containerspreadRadius: 0,
      containeroffset: const Offset(0, 4),
      containerBorder: Border.all(
          color: const Color.fromRGBO(70, 209, 184, 1), width: 0.5.h),
      containerWidget: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UbuntuTextStyle(
                textData: ratingTitle,
                textFontSize: 14.sm,
                textfontWeight: FontWeight.w700,
                textColor: const Color.fromRGBO(61, 61, 61, 1),
                textAlign: TextAlign.left,
                textLines: 10),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RatingBar.builder(
                  initialRating: 0,
                  itemCount: 5,
                  direction: Axis.horizontal,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Color.fromRGBO(70, 209, 184, 1),
                    size: 30.h,
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                      ratingValue2 = rating.toInt();
                    });
                  },
                ),
                UbuntuTextStyle(
                    textData: "(5/$ratingValue2)",
                    textFontSize: 14.sm,
                    textfontWeight: FontWeight.w700,
                    textColor: const Color.fromRGBO(61, 61, 61, 1),
                    textAlign: TextAlign.left,
                    textLines: 10),
              ],
            )
          ],
        ),
      ),
    );
  }

  _getRatingBar3(ratingTitle) {
    return CustomContainer(
      containerWidth: 303.w,
      containerHeight: 82.h,
      containerRadius: BorderRadius.circular(8.r),
      containerblurRadius: 30.r,
      containerspreadRadius: 0,
      containeroffset: const Offset(0, 4),
      containerBorder: Border.all(
          color: const Color.fromRGBO(70, 209, 184, 1), width: 0.5.h),
      containerWidget: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UbuntuTextStyle(
                textData: ratingTitle,
                textFontSize: 14.sm,
                textfontWeight: FontWeight.w700,
                textColor: const Color.fromRGBO(61, 61, 61, 1),
                textAlign: TextAlign.left,
                textLines: 10),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RatingBar.builder(
                  initialRating: 0,
                  itemCount: 5,
                  direction: Axis.horizontal,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: const Color.fromRGBO(70, 209, 184, 1),
                    size: 30.h,
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                      ratingValue3 = rating.toInt();
                    });
                  },
                ),
                UbuntuTextStyle(
                    textData: "(5/$ratingValue3)",
                    textFontSize: 14.sm,
                    textfontWeight: FontWeight.w700,
                    textColor: const Color.fromRGBO(61, 61, 61, 1),
                    textAlign: TextAlign.left,
                    textLines: 10),
              ],
            )
          ],
        ),
      ),
    );
  }

  _getCommentsBox() {
    return CustomContainer(
      containerWidth: 303.w,
      containerHeight: 92.h,
      containerRadius: BorderRadius.circular(8.r),
      containerblurRadius: 30.r,
      containerspreadRadius: 0,
      containeroffset: const Offset(0, 4),
      containerBorder: Border.all(
          color: const Color.fromRGBO(70, 209, 184, 1), width: 0.5.h),
      containerWidget: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // UbuntuTextStyle(
          //     textData: "Any other comments:",
          //     textFontSize: 14.sm,
          //     textfontWeight: FontWeight.w700,
          //     textColor: const Color.fromRGBO(61, 61, 61, 1),
          //     textAlign: TextAlign.left,
          //     textLines: 10),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: TextFormField(
                minLines: 2,
                maxLines: 5,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type here any other comments...",
                  labelText: "Any other comments:",
                  labelStyle: TextStyle(
                      fontSize: 18.0.sm,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(61, 61, 61, 1)),
                  hintStyle: TextStyle(
                    fontSize: 12.0.sm,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(156, 156, 156, 1),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
