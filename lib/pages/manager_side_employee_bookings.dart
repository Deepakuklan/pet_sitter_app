import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/data/dogdata.dart';

import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/mybutton.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';

class ManagerSideEmployeeBookings extends StatefulWidget {
  const ManagerSideEmployeeBookings({Key? key}) : super(key: key);

  @override
  _ManagerSideEmployeeBookingsState createState() =>
      _ManagerSideEmployeeBookingsState();
}

class _ManagerSideEmployeeBookingsState
    extends State<ManagerSideEmployeeBookings> {
  bool onSelect = false;
  int onShowData = 0;
  var onbuttonClick = 'Request to pet sit';

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 37.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: _getHeading(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  _getJobFinder(),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.75.h,
                    child: Expanded(
                      child: SingleChildScrollView(
                        child: _getDogDataPortraint(),
                      ),
                    ),
                  ),
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
                children: [],
              )),
        ),
      ),
    );
  }

  _getJobFinder() {
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
              setState(
                () {
                  onSelect = true;
                },
              );
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
                    textData: "Filled jobs",
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
                    textData: "Open jobs",
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

  _getHeading() {
    return UbuntuTextStyle(
      textData: "Employee Bookings",
      textAlign: TextAlign.left,
      textColor: const Color.fromRGBO(70, 209, 184, 1),
      textFontSize: 20.sm,
      textfontWeight: FontWeight.w700,
      textLines: 10,
    );
  }

  _getDogDataPortraint() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dogDataList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {}

          // => Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => EmployeeSideGigDetails(
          //       dogNumber: index,
          //     ),
          //   ),
          // )
          ,
          child: Column(
            children: [
              CustomContainer(
                containerHeight: 100.h,
                containerWidth: 335.w,
                containerRadius: BorderRadius.all(
                  Radius.circular(8.r),
                ),
                containerBoxShadowColor: const Color.fromRGBO(0, 0, 0, 0.08),
                containerColor: const Color.fromRGBO(255, 255, 255, 1),
                containerblurRadius: 30.r,
                containeroffset: const Offset(0, 4),
                containerspreadRadius: 0,
                containerWidget: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 38.h,
                                width: 38.h,
                                child: CustomContainer(
                                  containerColor: Colors.red,
                                  containerImage: DecorationImage(
                                      image: dogDataList[index].dogImage,
                                      fit: BoxFit.fill),
                                  containerRadius: BorderRadius.all(
                                    Radius.circular(10.r),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  UbuntuTextStyle(
                                    textData: dogDataList[index].dogName,
                                    textAlign: TextAlign.left,
                                    textColor:
                                        const Color.fromRGBO(61, 61, 61, 1),
                                    textFontSize: 16.sm,
                                    textfontWeight: FontWeight.w600,
                                    textLines: 10,
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  UbuntuTextStyle(
                                    textData: dogDataList[index].dogType,
                                    textAlign: TextAlign.left,
                                    textColor:
                                        const Color.fromRGBO(156, 156, 156, 1),
                                    textFontSize: 12.sm,
                                    textfontWeight: FontWeight.w400,
                                    textLines: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomContainer(
                                containerHeight: 31.h,
                                containerWidth: 104.w,
                                containerRadius: BorderRadius.all(
                                  Radius.circular(9.r),
                                ),
                                containerColor:
                                    const Color.fromRGBO(70, 209, 184, 0.12),
                                containerWidget: Center(
                                  child: MontserratTextStyle(
                                    textData:
                                        dogDataList[index].dogRequestStatus,
                                    textAlign: TextAlign.left,
                                    textColor:
                                        const Color.fromRGBO(70, 209, 184, 1),
                                    textFontSize: 16.sm,
                                    textfontWeight: FontWeight.w400,
                                    textLines: 10,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/icon/laction_icon.png"),
                              SizedBox(
                                width: 9.92.w,
                                height: 11.66.h,
                              ),
                              UbuntuTextStyle(
                                textData: dogDataList[index].dogLoction,
                                textAlign: TextAlign.left,
                                textColor: const Color.fromRGBO(61, 61, 61, 1),
                                textFontSize: 12.sm,
                                textfontWeight: FontWeight.w400,
                                textLines: 10,
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: MontserratTextStyle(
                              textData: dogDataList[index].addPostData,
                              textAlign: TextAlign.left,
                              textColor: const Color.fromRGBO(70, 209, 184, 1),
                              textFontSize: 16.sm,
                              textfontWeight: FontWeight.w400,
                              textLines: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        );
      },
    );
  }
}
