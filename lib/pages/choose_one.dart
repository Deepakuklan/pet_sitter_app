import 'package:flutter/material.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/customshape.dart';
import 'package:pet_sitter_app/helper/mybutton.dart';

import 'package:pet_sitter_app/helper/textfielddumy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';
import 'client_side_my_requests.dart';
import 'employee_side.dart';

class ChooseOne extends StatefulWidget {
  const ChooseOne({Key? key}) : super(key: key);

  @override
  _ChooseOneState createState() => _ChooseOneState();
}

class _ChooseOneState extends State<ChooseOne> {
  bool onSelect = false;

  @override
  Widget build(BuildContext context) {
    return _mainCode();
  }

  _mainCode() {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 24.h,
              ),
              //heading
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: _getHeading(),
              ),
              SizedBox(
                height: 20.h,
              ),
              //i am an pet sitter button
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      onSelect = true;
                    },
                  );
                },
                child: CustomContainer(
                  containerHeight: 115.h,
                  containerWidth: 335.w,
                  containerRadius: BorderRadius.circular(18.r),
                  containerBorder: Border.all(
                      color: kFF46D1B8.withOpacity(0.30), width: 1.h),
                  containerGradient: onSelect == true
                      ? const LinearGradient(
                          colors: [
                            kFF4ECEAF,
                            kFF63DFC1,
                          ],
                        )
                      : const LinearGradient(
                          colors: [
                            kWhiteColor,
                            kWhiteColor,
                          ],
                        ),
                  containerWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _getGirlAndDogPic(),
                      SizedBox(
                        width: 32.84.w,
                      ),
                      _getCustomContainer()
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 29.5.h,
              ),
              // Divider
              _getOrDivider(),
              SizedBox(
                height: 29.h,
              ),
              //i am need pet sitter button
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      onSelect = false;
                    },
                  );
                },
                child: CustomContainer(
                  containerHeight: 115.h,
                  containerWidth: 335.w,
                  containerGradient: onSelect == false
                      ? const LinearGradient(
                          colors: [
                            kFF4ECEAF,
                            kFF63DFC1,
                          ],
                        )
                      : const LinearGradient(
                          colors: [
                            kWhiteColor,
                            kWhiteColor,
                          ],
                        ),
                  containerRadius: BorderRadius.circular(18.r),
                  containerBorder: Border.all(
                      color: kFF46D1B8.withOpacity(0.30), width: 1.h),
                  containerWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _getCustomContainer2(),
                      SizedBox(
                        width: 70.w,
                      ),
                      _getOnlyDog(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 244.h,
              ),

              //button
              _getBottomButton(),
              SizedBox(
                height: 41.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

//i am an pet sitter button girl & dog
  _getGirlAndDogPic() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            ClipPath(
              clipper: BezierClipper(),
              child: Container(
                color: onSelect == true
                    ? kWhiteColor.withOpacity(0.20)
                    : kFF46D1B8.withOpacity(0.08),
                height: 89.h,
                width: 83.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 11.74.w),
              child: Row(
                children: [
                  Image.asset(
                    girlAndDog,
                    height: 89.h,
                    width: 94.w,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  _getCustomContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            ClipPath(
              clipper: BezierClipper(),
              child: Container(
                color: onSelect == true
                    ? kWhiteColor.withOpacity(0.20)
                    : kFF46D1B8.withOpacity(0.08),
                height: 33.h,
                width: 31.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.92.w, top: 4.6.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UbuntuTextStyle(
                    textData: 'I am',
                    textAlign: TextAlign.left,
                    textColor: onSelect == true ? kWhiteColor : kFF46D1B8,
                    textFontSize: 20.sm,
                    textfontWeight: FontWeight.w700,
                    textLines: 10,
                  ),
                  UbuntuTextStyle(
                    textData: 'an pet sitter',
                    textAlign: TextAlign.left,
                    textColor: onSelect == true ? kWhiteColor : kFF46D1B8,
                    textFontSize: 20.sm,
                    textfontWeight: FontWeight.w400,
                    textLines: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

//i need pet sitter
  _getCustomContainer2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right: 76.2.w),
              child: ClipPath(
                clipper: BezierClipper(),
                child: Container(
                  color: onSelect == false
                      ? kWhiteColor.withOpacity(0.20)
                      : kFF46D1B8.withOpacity(0.08),
                  height: 33.h,
                  width: 31.w,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.2.w, top: 4.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UbuntuTextStyle(
                    textData: 'I need',
                    textAlign: TextAlign.left,
                    textColor: onSelect == false ? kWhiteColor : kFF46D1B8,
                    textFontSize: 20.sm,
                    textfontWeight: FontWeight.w700,
                    textLines: 10,
                  ),
                  UbuntuTextStyle(
                    textData: 'a pet sitter',
                    textAlign: TextAlign.left,
                    textColor: onSelect == false ? kWhiteColor : kFF46D1B8,
                    textFontSize: 20.sm,
                    textfontWeight: FontWeight.w400,
                    textLines: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  _getOnlyDog() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: ClipPath(
                clipper: BezierClipper(),
                child: Container(
                  color: onSelect == false
                      ? kWhiteColor.withOpacity(0.12)
                      : kFF46D1B8.withOpacity(0.20),
                  height: 88.92.h,
                  width: 83.14.w,
                ),
              ),
            ),
            Image.asset(
              dog,
              height: 74.31.h,
              width: 80.61.w,
              fit: BoxFit.fill,
            )
          ],
        ),
      ],
    );
  }

  _getHeading() {
    return Column(
      children: [
        Row(
          children: [
            UbuntuTextStyle(
              textData: 'Welcome,',
              textAlign: TextAlign.left,
              textColor: kFF3D3D3D,
              textFontSize: 19.sm,
              textfontWeight: FontWeight.w400,
              textLines: 10,
            ),
          ],
        ),
        // UbuntuTextStyle(
        //   textData: ',',
        //   textAlign: TextAlign.left,
        //   textColor: kFF3D3D3D,
        //   textFontSize: 16.sm,
        //   textfontWeight: FontWeight.w400,
        //   textLines: 10,
        // ),
        Row(
          children: [
            UbuntuTextStyle(
              textData: 'John Karter',
              textAlign: TextAlign.left,
              textColor: kFF46D1B8,
              textFontSize: 20.sm,
              textfontWeight: FontWeight.w700,
              textLines: 10,
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          children: [
            UbuntuTextStyle(
              textData: 'Choose from the options below',
              textAlign: TextAlign.left,
              textColor: kFF282828,
              textFontSize: 16.sm,
              textfontWeight: FontWeight.w400,
              textLines: 10,
            ),
          ],
        ),
      ],
    );
  }

  _getOrDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 137.7.w,
          child: Divider(
            thickness: 1,
            color: kFF46D1B8.withOpacity(0.3),
          ),
        ),
        SizedBox(
          width: 18.3.w,
        ),
        UbuntuTextStyle(
          textData: 'OR',
          textAlign: TextAlign.left,
          textColor: kFF46D1B8,
          textFontSize: 16.sm,
          textfontWeight: FontWeight.w400,
          textLines: 10,
        ),
        SizedBox(
          width: 18.3.w,
        ),
        SizedBox(
          width: 137.7.w,
          child: Divider(
            thickness: 1,
            color: kFF46D1B8.withOpacity(0.3),
          ),
        ),
      ],
    );
  }

  _getBottomButton() {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => onSelect == false
              ? const EmployeeSideGigs()
              : const ClientSideMyRequests(),
        ),
      ),
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
              textData: 'Continue',
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
