import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/data/empJobData.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';

class ManagerSideEmployeeList extends StatefulWidget {
  const ManagerSideEmployeeList({Key? key}) : super(key: key);

  @override
  _ManagerSideEmployeeListState createState() =>
      _ManagerSideEmployeeListState();
}

class _ManagerSideEmployeeListState extends State<ManagerSideEmployeeList>
    with TickerProviderStateMixin {
  bool onSelect = false;
  int onShowData = 0;
  var onbuttonClick = 'Request to pet sit';

  TabController? _controller;

  int numofWeek = 0;

  @override
  void initState() {
    _controller = TabController(length: employeesDataList.length, vsync: this);

    super.initState();
  }

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
                    height: 9.h,
                  ),
                  _getDateSelector(),
                  SizedBox(
                    height: 15.h,
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.75.h,
                  //   child: Expanded(
                  //     child: SingleChildScrollView(
                  //       child: _getDogDataPortraint(),
                  //     ),
                  //   ),
                  // ),
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

  _getHeading() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UbuntuTextStyle(
          textData: "My Employees",
          textAlign: TextAlign.left,
          textColor: const Color.fromRGBO(70, 209, 184, 1),
          textFontSize: 20.sm,
          textfontWeight: FontWeight.w700,
          textLines: 10,
        ),
        SizedBox(
          height: 18.h,
        ),
        UbuntuTextStyle(
          textData: "Month of March",
          textAlign: TextAlign.left,
          textColor: const Color.fromRGBO(70, 209, 184, 1),
          textFontSize: 16.sm,
          textfontWeight: FontWeight.w700,
          textLines: 10,
        ),
      ],
    );
  }

  _getDateSelector() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TabBar(
          indicatorWeight: 0.01,
          controller: _controller,
          onTap: (e) {
            setState(() {
              numofWeek = e;
            });
          },
          isScrollable: true,
          tabs: List.generate(
            employeesDataList.length,
            (index) => CustomContainer(
              containerHeight: 60.h,
              containerWidth: 70.w,
              containerRadius: BorderRadius.circular(10.r),
              containerColor: index == numofWeek
                  ? const Color.fromRGBO(70, 209, 184, 1)
                  : const Color.fromRGBO(255, 255, 255, 1),
              containerWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  UbuntuTextStyle(
                    textData: "Week of",
                    textAlign: TextAlign.left,
                    textColor: index != numofWeek
                        ? const Color.fromRGBO(149, 149, 149, 1)
                        : const Color.fromRGBO(255, 255, 255, 1),
                    textFontSize: 12.sm,
                    textfontWeight: FontWeight.w400,
                    textLines: 10,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  UbuntuTextStyle(
                    textData: employeesDataList[index].week,
                    textAlign: TextAlign.left,
                    textColor: index != numofWeek
                        ? const Color.fromRGBO(149, 149, 149, 1)
                        : const Color.fromRGBO(255, 255, 255, 1),
                    textFontSize: 16.sm,
                    textfontWeight: FontWeight.w700,
                    textLines: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 26.h,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.70,
          child: Expanded(
            child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _controller,
                children: [
                  Center(child: _getJobDataPortraint(numofWeek = 0)),
                  Center(child: _getJobDataPortraint(numofWeek = 1)),
                  Center(child: _getJobDataPortraint(numofWeek = 2)),
                  Center(child: _getJobDataPortraint(numofWeek = 3)),
                ]),
          ),
        )
      ],
    );
  }

  _getJobDataPortraint(numofWeek) {
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: employeesDataList[numofWeek].data.length,
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
                // containerHeight: 100.h,
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
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 60.h,
                            width: 60.h,
                            child: CustomContainer(
                              containerColor: Colors.red,
                              containerImage: DecorationImage(
                                  image: AssetImage(employeesDataList[numofWeek]
                                      .data[index]
                                      .employeesImage),
                                  fit: BoxFit.fill),
                              containerRadius: BorderRadius.all(
                                Radius.circular(10.r),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                UbuntuTextStyle(
                                  textData: employeesDataList[numofWeek]
                                      .data[index]
                                      .employeesName,
                                  textAlign: TextAlign.left,
                                  textColor:
                                      const Color.fromRGBO(61, 61, 61, 1),
                                  textFontSize: 14.sm,
                                  textfontWeight: FontWeight.w800,
                                  textLines: 10,
                                ),
                                const Icon(
                                  Icons.more_vert,
                                  color: Color.fromRGBO(70, 209, 184, 1),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              children: [
                                UbuntuTextStyle(
                                  textData: "Total Bookings",
                                  textAlign: TextAlign.left,
                                  textColor:
                                      const Color.fromRGBO(61, 61, 61, 1),
                                  textFontSize: 12.sm,
                                  textfontWeight: FontWeight.w400,
                                  textLines: 10,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/icon/bookingnumber.png",
                                      height: 16.h,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    UbuntuTextStyle(
                                      textData: employeesDataList[numofWeek]
                                          .data[index]
                                          .totalBooking
                                          .toString(),
                                      textAlign: TextAlign.left,
                                      textColor:
                                          const Color.fromRGBO(61, 61, 61, 1),
                                      textFontSize: 12.sm,
                                      textfontWeight: FontWeight.w400,
                                      textLines: 10,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/icon/locationFilled.png",
                                      height: 16.h,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(
                                      width: 7.w,
                                    ),
                                    UbuntuTextStyle(
                                      textData: employeesDataList[numofWeek]
                                          .data[index]
                                          .location,
                                      textAlign: TextAlign.left,
                                      textColor:
                                          const Color.fromRGBO(61, 61, 61, 1),
                                      textFontSize: 12.sm,
                                      textfontWeight: FontWeight.w400,
                                      textLines: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
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
