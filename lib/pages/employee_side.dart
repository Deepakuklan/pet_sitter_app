import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/data/dogdata.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';

import '../constant.dart';
import 'employee_side_gig_details_not_booked.dart';

class EmployeeSideGigs extends StatefulWidget {
  const EmployeeSideGigs({Key? key}) : super(key: key);

  @override
  _EmployeeSideGigsState createState() => _EmployeeSideGigsState();
}

class _EmployeeSideGigsState extends State<EmployeeSideGigs> {
  @override
  Widget build(BuildContext context) {
    return _mainCode();
  }

  _mainCode() {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomContainer(
            containerWidth: double.maxFinite,
            containerWidget: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: _getHeading(),
                ),

                SizedBox(
                  height: 15.h,
                ),
                //search field
                _searchBox(),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.60.h,
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: _getDogData(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: _bottombox(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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

  _searchBox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomContainer(
          containerHeight: 40.h,
          containerWidth: 335.w,
          containerColor: Colors.white,
          containerRadius: BorderRadius.circular(8.r),
          containerblurRadius: 30.r,
          containerspreadRadius: 0,
          containeroffset: const Offset(0, 4),
          containerBoxShadowColor: const Color.fromRGBO(0, 0, 0, 0.08),
          containerBorder: Border.all(width: 1.w, color: kFFE7E7E7),
          containerWidget: TextField(
            // controller: controller,
            // focusNode: focusNode,
            style: TextStyle(fontSize: 12.sm, color: Colors.grey[600]),
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x4437474F),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: Image.asset(
                  filter,
                  fit: BoxFit.contain,
                ),
              ),
              border: InputBorder.none,
              hintText: "Search...",
              hintStyle: TextStyle(
                  color: const Color.fromRGBO(133, 133, 133, 1),
                  fontSize: 12.sm,
                  fontWeight: FontWeight.w400),
              contentPadding: EdgeInsets.only(
                left: 14.w,
                right: 14.w,
                top: 12.h,
                bottom: 12.h,
              ),
            ),
          ),
        )
      ],
    );
  }

  _getDogData() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dogDataList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EmployeeSideGigDetails(
                dogNumber: index,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomContainer(
                containerHeight: 128.h,
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
                                    textColor: Color.fromRGBO(61, 61, 61, 1),
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
                                    textColor: Color.fromRGBO(156, 156, 156, 1),
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
                              UbuntuTextStyle(
                                textData: dogDataList[index].dogAge,
                                textAlign: TextAlign.left,
                                textColor: Color.fromRGBO(156, 156, 156, 1),
                                textFontSize: 12.sm,
                                textfontWeight: FontWeight.w400,
                                textLines: 10,
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              CustomContainer(
                                containerHeight: 4.h,
                                containerWidth: 4.w,
                                containerRadius: BorderRadius.all(
                                  Radius.circular(100.r),
                                ),
                                containerColor:
                                    const Color.fromRGBO(70, 209, 184, 1),
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              UbuntuTextStyle(
                                textData: dogDataList[index].dogWeight,
                                textAlign: TextAlign.left,
                                textColor: Color.fromRGBO(156, 156, 156, 1),
                                textFontSize: 12.sm,
                                textfontWeight: FontWeight.w400,
                                textLines: 10,
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          UbuntuTextStyle(
                            textData: dogDataList[index].jobDiscription,
                            textAlign: TextAlign.left,
                            textColor: Color.fromRGBO(156, 156, 156, 1),
                            textFontSize: 12.sm,
                            textfontWeight: FontWeight.w400,
                            textLines: 10,
                          ),
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
                                textColor: Color.fromRGBO(61, 61, 61, 1),
                                textFontSize: 12.sm,
                                textfontWeight: FontWeight.w400,
                                textLines: 10,
                              ),
                            ],
                          ),
                          MontserratTextStyle(
                            textData: dogDataList[index].addPostData,
                            textAlign: TextAlign.left,
                            textColor: Color.fromRGBO(70, 209, 184, 1),
                            textFontSize: 16.sm,
                            textfontWeight: FontWeight.w400,
                            textLines: 10,
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

  _bottombox() {
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
