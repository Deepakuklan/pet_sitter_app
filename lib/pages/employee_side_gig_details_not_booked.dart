import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/constant.dart';
import 'package:pet_sitter_app/data/dogdata.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';

import 'employee_side_availability.dart';

class EmployeeSideGigDetails extends StatefulWidget {
  final int dogNumber;

  const EmployeeSideGigDetails({Key? key, required this.dogNumber})
      : super(key: key);

  @override
  _EmployeeSideGigDetailsState createState() => _EmployeeSideGigDetailsState();
}

class _EmployeeSideGigDetailsState extends State<EmployeeSideGigDetails> {
  var onbuttonClick = 'Request to pet sit';

  int onShowData = 0;

  @override
  Widget build(BuildContext context) {
    return _main();
  }

  _main() {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomContainer(
                containerHeight: 370.h,
                containerWidget: Stack(
                  children: [
                    _topImageBox(),
                    Padding(
                      padding: EdgeInsets.only(top: 220.h),
                      child: Center(
                        child: _getbackgroundbluer(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Center(
                      child: _getDogOwnerData(),
                    ),
                  ),
                  onShowData == 0
                      ? SizedBox(
                          height: 90.h,
                        )
                      : Padding(
                          padding: EdgeInsets.only(
                              right: 20.w, left: 20.w, top: 16.h),
                          child: Center(
                            child: _getDetailsBooked(),
                          ),
                        ),
                  SizedBox(
                    height: 38.h,
                  ),
                  _getBottonButton(),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _bottomboxButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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

  _topImageBox() {
    return CustomContainer(
      containerHeight: 392.h,
      containerWidth: 375.w,
      containerBoxShadowColor: kWhiteColor.withOpacity(0.5),
      containerspreadRadius: 0.r,
      containerblurRadius: 10.r,
      containeroffset: const Offset(0, 4),
      containerRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r)),
      containerImage: const DecorationImage(
        image: AssetImage('assets/image/dog2.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  _getbackgroundbluer() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      // clipBehavior: Clip.antiAlias,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: CustomContainer(
          containerHeight: 80.h,
          containerWidth: 235.w,
          containerGradient: const LinearGradient(
            colors: [
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(255, 255, 255, 0)
            ],
          ),
          containerColor: const Color.fromRGBO(255, 255, 255, 0.3),
          containerRadius: BorderRadius.circular(8.r),
          containerBorder: Border.all(
              color: const Color.fromRGBO(255, 255, 255, 0.2), width: 1.w),
          containerWidget: Padding(
            padding:
                EdgeInsets.only(top: 8.h, left: 10.w, right: 5.w, bottom: 12.h),
            child: _getdogdata(),
          ),
        ),
      ),
    );
  }

  _getdogdata() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            UbuntuTextStyle(
              textData: dogDataList[widget.dogNumber].dogType,
              textAlign: TextAlign.left,
              textColor: kWhiteColor,
              textFontSize: 16.sm,
              textfontWeight: FontWeight.w700,
              textLines: 10,
            ),
          ],
        ),
        Row(
          children: [
            UbuntuTextStyle(
                textAlign: TextAlign.left,
                textColor: kWhiteColor,
                textFontSize: 16.sm,
                textfontWeight: FontWeight.w700,
                textLines: 10,
                textData: dogDataList[widget.dogNumber].dogWeight),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Image(
                  image: AssetImage(
                    'assets/icon/Location_white.png',
                  ),
                ),
                SizedBox(
                  width: 7.w,
                ),
                UbuntuTextStyle(
                    textAlign: TextAlign.left,
                    textColor: kWhiteColor,
                    textFontSize: 12.sm,
                    textfontWeight: FontWeight.w400,
                    textLines: 10,
                    textData: dogDataList[widget.dogNumber].dogLoction),
              ],
            ),
            UbuntuTextStyle(
                textAlign: TextAlign.left,
                textColor: kWhiteColor,
                textFontSize: 12.sm,
                textfontWeight: FontWeight.w400,
                textLines: 10,
                textData: dogDataList[widget.dogNumber].dogAge),
          ],
        ),
      ],
    );
  }

  _getDogOwnerData() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomContainer(
                  containerHeight: 42.h,
                  containerWidth: 42.w,
                  containerImage: DecorationImage(
                      image: AssetImage(
                          dogDataList[widget.dogNumber].dogOwnerPic)),
                  containerRadius: BorderRadius.all(
                    Radius.circular(8.r),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UbuntuTextStyle(
                      textData: dogDataList[widget.dogNumber].dogOwnerName,
                      textAlign: TextAlign.left,
                      textFontSize: 16.sm,
                      textColor: kFF3D3D3D,
                      textfontWeight: FontWeight.w400,
                      textLines: 10,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    UbuntuTextStyle(
                      textAlign: TextAlign.left,
                      textFontSize: 12.sm,
                      textColor: kFF9C9C9C,
                      textfontWeight: FontWeight.w400,
                      textLines: 10,
                      textData: 'Owner',
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                UbuntuTextStyle(
                  textAlign: TextAlign.left,
                  textFontSize: 12.sm,
                  textColor: kFF3D3D3D,
                  textfontWeight: FontWeight.w400,
                  textLines: 10,
                  textData: dogDataList[widget.dogNumber].dogOwnerDate,
                ),
                SizedBox(
                  height: 30.h,
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        UbuntuTextStyle(
          textAlign: TextAlign.left,
          textFontSize: 14.sm,
          textColor: kFF9C9C9C,
          textfontWeight: FontWeight.w400,
          textLines: 10,
          textData: dogDataList[widget.dogNumber].dogOwnerRequirement,
        ),
      ],
    );
  }

  _getBottonButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomContainer(
          containerHeight: 40.h,
          containerWidth: 40.w,
          containerColor: kFF46D1B8,
          containerRadius: BorderRadius.circular(10.r),
          containerImage: const DecorationImage(
            image: AssetImage(heart),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        GestureDetector(
          onTap: () {
            onShowData == 0
                ? setState(() {
                    onbuttonClick = 'Add to My Calendar';
                    onShowData = 1;
                  })
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmployeeSideAvailabitiy(),
                    ),
                  );
          },
          child: CustomContainer(
            containerHeight: 40.h,
            containerWidth: 275.w,
            containerColor: const Color.fromRGBO(70, 209, 184, 1),
            containerRadius: BorderRadius.circular(9.r),
            containerWidget: Center(
              child: UbuntuTextStyle(
                textData: onbuttonClick,
                textAlign: TextAlign.left,
                textColor: kWhiteColor,
                textFontSize: 16.sm,
                textfontWeight: FontWeight.w400,
                textLines: 10,
              ),
            ),
          ),
        )
      ],
    );
  }

  _getDetailsBooked() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 1.h,
              width: 335.w,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0x0046D1B8),
                    Color(0xff46D1B8),
                    Color(0x0046D1B8)
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(phone),
            SizedBox(
              width: 10.04.w,
            ),
            UbuntuTextStyle(
              textData: dogDataList[widget.dogNumber].dogOwnerMobileNumber,
              textAlign: TextAlign.left,
              textColor: kFF3D3D3D,
              textFontSize: 14.sm,
              textfontWeight: FontWeight.w400,
              textLines: 10,
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(location),
            SizedBox(
              width: 10.04.w,
            ),
            UbuntuTextStyle(
              textData: dogDataList[widget.dogNumber].dogOwnerAddress,
              textAlign: TextAlign.left,
              textColor: kFF3D3D3D,
              textFontSize: 14.sm,
              textfontWeight: FontWeight.w400,
              textLines: 10,
            ),
          ],
        ),
      ],
    );
  }
}
