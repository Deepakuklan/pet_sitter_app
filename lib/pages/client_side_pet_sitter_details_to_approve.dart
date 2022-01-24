import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/mybutton.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';

class ClientSidePetSitterDetailsToApprove extends StatefulWidget {
  const ClientSidePetSitterDetailsToApprove({Key? key}) : super(key: key);

  @override
  _ClientSidePetSitterDetailsToApproveState createState() =>
      _ClientSidePetSitterDetailsToApproveState();
}

class _ClientSidePetSitterDetailsToApproveState
    extends State<ClientSidePetSitterDetailsToApprove> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait
        ? _mainSmall()
        : _mainSmall();
  }

  Widget _mainSmall() {
    Size screenSize = MediaQuery.of(context).size;

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
                            containerMargin: EdgeInsets.only(top: 182.h),
                            containerWidth: 335.w,
                            containerHeight: 507.h,
                            containeroffset: const Offset(0, 4),
                            containerblurRadius: 30.r,
                            containerBoxShadowColor:
                                const Color.fromRGBO(0, 0, 0, 0.08),
                            containerColor:
                                const Color.fromRGBO(255, 255, 255, 1),
                            containerRadius: BorderRadius.circular(15.r)),
                      ),
                      Column(
                        children: [
                          _getheading(),
                          SizedBox(
                            height: 27.h,
                          ),
                          _getProfileImage(),
                          SizedBox(
                            height: 12.h,
                          ),
                          _getprofileData(),
                          SizedBox(
                            height: 16.h,
                          ),
                          _getexperience(),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 707.h),
                            child: _getBottomButtonlarge(),
                          ),
                          SizedBox(
                            height: 40.h,
                          )
                        ],
                      )
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
      containerMargin: EdgeInsets.only(top: 37.h, left: 20.w),
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36.w),
      child: Column(
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
          SizedBox(
            height: 17.h,
          ),

          UbuntuTextStyle(
              textData:
                  "Dogs are my life. I have been doing this for 10 years now and I would not choose anything else. I love taking the dogs to the park and having them run around.",
              textFontSize: 14.sm,
              textfontWeight: FontWeight.w400,
              textColor: const Color.fromRGBO(41, 41, 41, 1),
              textAlign: TextAlign.left,
              textLines: 20),
          SizedBox(
            height: 14.h,
          ),
//divder
          CustomContainer(
            containerHeight: 1.h,
            containerWidth: 297.w,
            containerGradient: const LinearGradient(
              colors: [Color(0x0046D1B8), Color(0xff46D1B8), Color(0x0046D1B8)],
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          _getreview(),
        ],
      ),
    );
  }

  _getreview() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UbuntuTextStyle(
                textData: "Reviews (20)",
                textFontSize: 14.sm,
                textfontWeight: FontWeight.w400,
                textColor: const Color.fromRGBO(61, 61, 61, 1),
                textAlign: TextAlign.left,
                textLines: 20),
            Row(
              children: [
                UbuntuTextStyle(
                    textData: "5.0",
                    textFontSize: 12.sm,
                    textfontWeight: FontWeight.w400,
                    textColor: const Color.fromRGBO(156, 156, 156, 1),
                    textAlign: TextAlign.left,
                    textLines: 20),
                SizedBox(
                  width: 6.w,
                ),

                //star
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: const Color.fromRGBO(70, 209, 184, 1),
                      size: 13.h,
                    ),
                    Icon(
                      Icons.star,
                      color: const Color.fromRGBO(70, 209, 184, 1),
                      size: 13.h,
                    ),
                    Icon(
                      Icons.star,
                      color: const Color.fromRGBO(70, 209, 184, 1),
                      size: 13.h,
                    ),
                    Icon(
                      Icons.star,
                      color: const Color.fromRGBO(70, 209, 184, 1),
                      size: 13.h,
                    ),
                    Icon(
                      Icons.star_border,
                      color: const Color.fromRGBO(70, 209, 184, 1),
                      size: 13.h,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),

        SizedBox(
          height: 10.h,
        ),

        //List of reviews
        CustomContainer(
          containerWidth: 303.w,
          containerHeight: 196.h,
          containerRadius: BorderRadius.circular(8.r),
          containerBorder:
              Border.all(color: Color.fromRGBO(226, 226, 226, 1), width: 0.8.h),
          containerWidget: ListView.builder(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomContainer(
                            containerWidth: 29.h,
                            containerHeight: 29.h,
                            containerRadius: BorderRadius.circular(100.r),
                            containerImage: const DecorationImage(
                                image: AssetImage("assets/image/person4.jpg"),
                                fit: BoxFit.fill),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      UbuntuTextStyle(
                                          textData: "Cameron Williamson",
                                          textFontSize: 12.sm,
                                          textfontWeight: FontWeight.w400,
                                          textColor: const Color.fromRGBO(
                                              156, 156, 156, 1),
                                          textAlign: TextAlign.left,
                                          textLines: 20),
                                      UbuntuTextStyle(
                                          textData: "Mar 21, 2021",
                                          textFontSize: 12.sm,
                                          textfontWeight: FontWeight.w400,
                                          textColor: const Color.fromRGBO(
                                              156, 156, 156, 1),
                                          textAlign: TextAlign.left,
                                          textLines: 20),
                                    ],
                                  ),
                                  //star
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: const Color.fromRGBO(
                                            70, 209, 184, 1),
                                        size: 13.h,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: const Color.fromRGBO(
                                            70, 209, 184, 1),
                                        size: 13.h,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: const Color.fromRGBO(
                                            70, 209, 184, 1),
                                        size: 13.h,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: const Color.fromRGBO(
                                            70, 209, 184, 1),
                                        size: 13.h,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: const Color.fromRGBO(
                                            70, 209, 184, 1),
                                        size: 13.h,
                                      ),
                                    ],
                                  ),

                                  UbuntuTextStyle(
                                      textData:
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                                      textFontSize: 12.sm,
                                      textfontWeight: FontWeight.w400,
                                      textColor: const Color.fromRGBO(
                                          156, 156, 156, 1),
                                      textAlign: TextAlign.left,
                                      textLines: 20),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

  _getexperience() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            children: [
              UbuntuTextStyle(
                  textData: "Experience",
                  textFontSize: 14.sm,
                  textfontWeight: FontWeight.w400,
                  textColor: const Color.fromRGBO(61, 61, 61, 1),
                  textAlign: TextAlign.left,
                  textLines: 20),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icon/briefcase.png",
                    height: 18.h,
                  ),
                  UbuntuTextStyle(
                      textData: "10 years",
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
        Expanded(
          child: Column(
            children: [
              UbuntuTextStyle(
                  textData: "Prefers",
                  textFontSize: 14.sm,
                  textfontWeight: FontWeight.w400,
                  textColor: const Color.fromRGBO(61, 61, 61, 1),
                  textAlign: TextAlign.left,
                  textLines: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icon/pet.png",
                    height: 18.h,
                  ),
                  UbuntuTextStyle(
                      textData: "Dogs 10-24",
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

  _getBottomButtonlarge() {
    return CustomContainer(
      // containerWidth: 335.w,
      containerWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            buttonHeight: 40.h,
            buttonWidht: 160.w,
            buttonBorderRadius: 9.r,
            buttonTextData: Center(
              child: UbuntuTextStyle(
                textColor: Colors.white,
                textFontSize: 16.sm,
                textfontWeight: FontWeight.w400,
                textData: 'Approve',
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
            buttonWidht: 160.w,
            buttonBorderRadius: 9.r,
            buttonBorderColor: const Color(0xff46D1B8),
            buttonBorderwitdh: 1.0.h,
            buttonTextData: Center(
              child: UbuntuTextStyle(
                textColor: const Color(0xff46D1B8),
                textFontSize: 16.sm,
                textfontWeight: FontWeight.w400,
                textData: 'Reject',
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
