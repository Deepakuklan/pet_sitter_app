import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/calender/calendar_page_controller.dart';
import 'package:pet_sitter_app/calender/utils.dart';
import 'package:pet_sitter_app/calender/widgets/calendar_widget.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';

import 'models/date.dart';

class CustomCalender extends StatefulWidget {
  DateTime? initialDate;

  late String getYear;

  late String getMonth;

  late String getDay;

  @override
  _CustomCalenderState createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender>
    with SingleTickerProviderStateMixin {
  late CalendarPageController controller;
  PageController? pageController;
  List<String> listOfMonths = [];

  var onSelected;

  static var weekendOpacityEnable = true;

  @override
  void initState() {
    pageController = PageController(initialPage: 1);
    controller = CalendarPageController(
      pageController,
      widget.initialDate,
    );

    super.initState();
  }

  String dropdownValue = '2022';
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      containerColor: Colors.white,
      // containerWidth: double.maxFinite,
      containerHeight: 272.h,
      containerWidget: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _selectMonth(),
              _selectYear(),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          _getWeek(),
          const SizedBox(
            height: 16,
          ),
          _getDays()
        ],
      ),
    );
  }

  _selectMonth() {
    return CustomContainer(
      containerHeight: 36.h,
      containerWidth: 210.w,
      containerColor: const Color.fromRGBO(70, 209, 184, 0.12),
      containerRadius: BorderRadius.circular(8.r),
      containerWidget: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                pageController!.previousPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.linear);
              },
              child: CustomContainer(
                containerHeight: 26.h,
                containerWidth: 26.w,
                containerColor: const Color.fromRGBO(255, 255, 255, 1),
                containerRadius: BorderRadius.circular(5.r),
                containerImage: const DecorationImage(
                    image: AssetImage('assets/icon/backbutton.png')),
              ),
            ),
            StreamBuilder(
              stream: controller.update,
              initialData: PageDirection.none,
              builder: (context, snapshot) {
                return UbuntuTextStyle(
                  textColor: const Color.fromRGBO(70, 209, 184, 1),
                  textFontSize: 16.sm,
                  textfontWeight: FontWeight.w400,
                  textData:
                      controller.dataCollection.currentMonth!.month!.month,
                  textAlign: TextAlign.left,
                  textLines: 10,
                );
              },
            ),
            GestureDetector(
              onTap: () {
                pageController!.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.linear);
              },
              child: CustomContainer(
                containerHeight: 26.h,
                containerWidth: 26.w,
                containerColor: const Color.fromRGBO(255, 255, 255, 1),
                containerRadius: BorderRadius.circular(5.r),
                containerImage: const DecorationImage(
                    image: AssetImage('assets/icon/next.png')),
              ),
            )
          ],
        ),
      ),
    );
  }

  _selectYear() {
    return CustomContainer(
      containerHeight: 36.h,
      containerWidth: 112.w,
      containerColor: const Color.fromRGBO(70, 209, 184, 0.12),
      containerRadius: BorderRadius.circular(8.r),
      containerWidget: Padding(
        padding: const EdgeInsets.only(left: 13),
        child: Center(
          child: StreamBuilder(
            stream: controller.update,
            initialData: PageDirection.none,
            builder: (context, snapshot) {
              return UbuntuTextStyle(
                textColor: const Color.fromRGBO(70, 209, 184, 1),
                textFontSize: 16.sm,
                textfontWeight: FontWeight.w400,
                textData: "${controller.dataCollection.currentMonth!.year}",
                textAlign: TextAlign.left,
                textLines: 10,
              );
            },
          ),
        ),

        // DropdownButton<String>(
        //   menuMaxHeight: 200,
        //   isExpanded: true,
        //   alignment: AlignmentDirectional.center,
        //   icon: const Icon(Icons.arrow_drop_down),
        //   iconEnabledColor: const Color.fromRGBO(70, 209, 184, 1),
        //   iconSize: 40.r,
        //   underline: Container(
        //     height: 1,
        //     color: Colors.transparent,
        //   ),
        //   style: TextStyle(
        //     color: const Color.fromRGBO(70, 209, 184, 1),
        //     fontSize: 16.sp,
        //     fontWeight: FontWeight.w400,
        //   ),
        //   value: dropdownValue,
        //   items: <String>['2021', '2022', '2023', '2024']
        //       .map<DropdownMenuItem<String>>((String value) {
        //     return DropdownMenuItem<String>(
        //       value: value,
        //       child: Text(value),
        //     );
        //   }).toList(),
        //   onChanged: (data) {
        //     setState(() {
        //       dropdownValue = data.toString();
        //     });
        //   },
        // ),
      ),
    );
  }

  _getWeek() {
    return Table(
      children: [
        TableRow(
          children: List.generate(
            7,
            (index) => Center(
              child: UbuntuTextStyle(
                  textData: index.week,
                  textFontSize: 12.sm,
                  textfontWeight: FontWeight.w400,
                  textColor: const Color.fromRGBO(89, 89, 89, 1),
                  textAlign: TextAlign.center,
                  textLines: 1),
            ),
          ),
        ),
      ],
    );
  }

  _getDays() {
    return Expanded(
      child: StreamBuilder<PageDirection>(
        stream: controller.update.stream,
        builder: (context, snapshot) => PageView(
          controller: pageController,
          onPageChanged: controller.onChage,
          children: [
            CalendarWidget(
              key: Key(controller.dataCollection.previousMonth!.key),
              date: controller.dataCollection.previousMonth,
              onSelected: (context) {
                widget.getYear = context.year.toString();
                widget.getMonth = context.month.toString();
                widget.getDay = context.day.toString();
              },
              backgroundColor: Colors.white,
              activeColor: const Color.fromRGBO(92, 92, 92, 1),
              selectedStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
              textStyleDays: TextStyle(
                fontSize: 20.sm,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(92, 92, 92, 1),
              ),
              // textStyleWeekDay: const TextStyle(
              //     fontWeight: FontWeight.bold, color: Colors.yellow),
              // titleStyle:
              //     const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              pageController: pageController,
              // previous: previous,
              // next: next,
              weekendOpacityEnable: weekendOpacityEnable,
              weekendOpacity: 1.0,
            ),
            CalendarWidget(
              key: Key(controller.dataCollection.currentMonth!.key),
              date: controller.dataCollection.currentMonth,
              onSelected: (context) {
                widget.getYear = context.year.toString();
                widget.getMonth = context.month.toString();
                widget.getDay = context.day.toString();
              },
              backgroundColor: Colors.white,
              activeColor: const Color.fromRGBO(70, 209, 184, 1),
              selectedStyle: TextStyle(
                  fontSize: 20.sm,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
              textStyleDays: TextStyle(
                fontSize: 20.sm,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(92, 92, 92, 1),
              ),
              // textStyleWeekDay:
              //     TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),
              // titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              pageController: pageController,
              // previous: previous,
              // next: next,
              weekendOpacityEnable: weekendOpacityEnable,
              weekendOpacity: 1.0,
            ),
            CalendarWidget(
              key: Key(controller.dataCollection.nextMonth!.key),
              date: controller.dataCollection.nextMonth,
              onSelected: (context) {
                widget.getYear = context.year.toString();
                widget.getMonth = context.month.toString();
                widget.getDay = context.day.toString();
              },
              backgroundColor: Colors.white,
              activeColor: Colors.orange,
              selectedStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
              textStyleDays: TextStyle(
                fontSize: 20.sm,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(92, 92, 92, 1),
              ),
              // textStyleWeekDay:
              //     TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),
              // titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              // pageController: pageController,
              // previous: previous,
              // next: next,
              weekendOpacityEnable: weekendOpacityEnable,
              weekendOpacity: 1.0,
            ),
          ],
        ),
      ),
    );
  }
}
