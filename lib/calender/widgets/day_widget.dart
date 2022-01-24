import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/calender/models/day.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';

class DayWidget extends StatelessWidget {
  final Day? day;
  final TextStyle? style;
  final Color? activeColor;
  final Color? backgroundColor;
  final Function? onTap;
  final bool isSelected;
  final double radius;
  const DayWidget(
      {Key? key,
      this.day,
      this.style,
      this.onTap,
      this.activeColor,
      this.isSelected = false,
      this.radius = 20,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: day!.value == 0 ? null : onTap as void Function()?,
      child: CustomContainer(
        containerHeight: 26.h,
        containerWidth: 26.w,
        containerRadius: BorderRadius.circular(20.r),
        containerColor: isSelected ? activeColor : backgroundColor,
        containerWidget: Center(
          child: Text(
            day!.label,
            style: style,
          ),
        ),
      ),

      // CircleAvatar(
      //   radius: radius,
      //   backgroundColor: isSelected ? activeColor : backgroundColor,
      //   child: Text(
      //     day!.label,
      //     style: style,
      //   ),
      // ),
    );
  }
}
