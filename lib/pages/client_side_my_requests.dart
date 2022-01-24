import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/data/dogdata.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/mybutton.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';
import 'package:pet_sitter_app/pages/client_side_submit_request.dart';

class ClientSideMyRequests extends StatefulWidget {
  const ClientSideMyRequests({Key? key}) : super(key: key);

  @override
  _ClientSideMyRequestsState createState() => _ClientSideMyRequestsState();
}

class _ClientSideMyRequestsState extends State<ClientSideMyRequests> {
  @override
  Widget build(BuildContext context) {
    return _mainSmall();
  }

  _mainSmall() {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomContainer(
            containerWidth: double.maxFinite,
            containerWidget: Column(
              // mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 34.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: _headingTextPortraint(),
                ),

                SizedBox(
                  height: 15.h,
                ),
                //search field
                _searchBoxPortraint(),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.65.h,
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: _getDogDataPortraint(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: _bottomboxPortraint(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _headingTextPortraint() {
    return SizedBox(
      height: 53.h,
      width: 335.w,
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    UbuntuTextStyle(
                      textAlign: TextAlign.left,
                      textColor: const Color(0xff3D3D3D),
                      textFontSize: 19.sm,
                      textfontWeight: FontWeight.w400,
                      textLines: 10,
                      textData: 'Welcome',
                    ),
                    UbuntuTextStyle(
                      textAlign: TextAlign.left,
                      textColor: const Color(0xff3D3D3D),
                      textFontSize: 16.sm,
                      textfontWeight: FontWeight.w400,
                      textLines: 10,
                      textData: ',',
                    ),
                  ],
                ),
                Row(
                  children: [
                    UbuntuTextStyle(
                      textAlign: TextAlign.left,
                      textColor: const Color(0xff46D1B8),
                      textFontSize: 20.sm,
                      textfontWeight: FontWeight.w700,
                      textLines: 10,
                      textData: 'John Karter',
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              child: Image.asset(
                "assets/image/person3.jpg",
                fit: BoxFit.fill,
                width: 40.h,
                height: 40.h,
              ),
            )
          ],
        ),
      ),
    );
  }

  _searchBoxPortraint() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: Column(
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
            containerBorder: Border.all(
                width: 1.w, color: const Color.fromRGBO(231, 231, 231, 1)),
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
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Image.asset(
                    "assets/icon/Filter.png",
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
      ),
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

  _bottomboxPortraint() {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const ClientSideSubmitRequest())),
      child: MyButton(
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
      ),
    );
  }
}
