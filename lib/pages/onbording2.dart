import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_sitter_app/constant.dart';
import 'package:pet_sitter_app/helper/circlehelper.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/customshape.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  _Onboarding2State createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
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
              Stack(
                children: [
                  _getBackGroundFilledCircle(),
                  Column(
                    children: [
                      SizedBox(
                        height: 17.h,
                      ),
                      _getHadingText(),
                      SizedBox(
                        height: 22.29.h,
                      ),
                      _getMiddleImage(),
                      SizedBox(
                        height: 80.h,
                      ),
                      _getContainerWithText(),
                      SizedBox(
                        height: 41.h,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _getBackGroundFilledCircle() {
    return Stack(
      children: [
        SizedBox(
          width: 1.sw,
          height: 1.sh,
        ),
        //right circle
        Positioned(
          top: 42.h,
          right: -76.w,
          child: Circlehelper(
            circleHeight: 108.h,
            circleWidht: 108.w,
            circleGradientColor: LinearGradient(colors: [
              kFF4ECEAF.withOpacity(0.2),
              kFF63DFC1.withOpacity(0.2)
            ]),
          ),
        ),
        //left circle
        Positioned(
          top: 108.h,
          right: 327.w,
          child: Circlehelper(
            circleHeight: 108.h,
            circleWidht: 108.w,
            circleGradientColor: LinearGradient(colors: [
              kFF4ECEAF.withOpacity(0.3),
              kFF63DFC1.withOpacity(0.3)
            ]),
          ),
        ),

        //Right side half circle
        Positioned(
          top: 370.h,
          right: -22.w,
          child: getcustometrangle(),
        ),

        //bluer

        //top center  bluer
        Positioned(
          top: 62.h,
          left: 86.w,
          child: Circlehelper(
            circleHeight: 68.h,
            circleWidht: 68.w,
            circleBoxShadowcColor: kFF4ECEAF.withOpacity(0.7),
            circleBoxShadowblurRadius: 106,
          ),
        ),

        // middle right bluer
        Positioned(
          top: 355.h,
          left: 296.w,
          child: Circlehelper(
            circleHeight: 174.h,
            circleWidht: 174.w,
            circleBoxShadowcColor: kFF63DFC1.withOpacity(0.5),
            circleBoxShadowblurRadius: 106,
          ),
        ),
        //bottom left bluer
        Positioned(
          top: 578.h,
          left: 0.w,
          child: Circlehelper(
            circleHeight: 240.h,
            circleWidht: 240.0.w,
            circleBoxShadowcColor: kFF46D1B8.withOpacity(0.08),
            circleBoxShadowblurRadius: 112,
          ),
        ),
      ],
    );
  }

  getcustometrangle() {
    return ClipPath(
      clipper: CustomTrangle(),
      child: Container(
        height: 29.h,
        width: 95.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kFF4ECEAF.withOpacity(0.15), kFF63DFC1.withOpacity(0.15)],
          ),
        ),
      ),
    );
  }

  _getHadingText() {
    return Center(
      child: SizedBox(
        height: 92.h,
        width: 173.w,
        child: GradientText(
          'WHISKERS AWAY',
          style: GoogleFonts.cormorant(
            textStyle: TextStyle(
              fontSize: 30.sm,
              fontWeight: FontWeight.w600,
            ),
          ),
          textAlign: TextAlign.center,
          colors: const [Colors.blue, Colors.teal, Colors.brown, Colors.orange],
        ),
      ),
    );
  }

  _getMiddleImage() {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          top: 19.7.h,
        ),
        child: getcustomeFrame(),
      ),
    );
  }

  getcustomeShape() {
    return ClipPath(
      clipper: shape2(),
      child: Container(
        color: kFFE8FAF6,
        height: 245.27.h,
        width: 236.35.w,
      ),
    );
  }

  _getContainerWithText() {
    return Center(
      child: CustomContainer(
        containerHeight: 165.h,
        containerWidth: 335.w,
        containerColor: kWhiteColor,
        containerRadius: BorderRadius.all(Radius.circular(15.r)),
        containerblurRadius: 30,
        containerspreadRadius: 0,
        containeroffset: const Offset(0, 4),
        containerBoxShadowColor: kBlackColor.withOpacity(0.08),
        containerWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PoppinsTextStyle(
              textData: 'Post Your Pet Sitting need, Pet Sitters Come to You!',
              textAlign: TextAlign.left,
              textColor: kBlackColor,
              textFontSize: 12.sp,
              textfontWeight: FontWeight.w600,
              textLines: 10,
            ),

            PoppinsTextStyle(
              textAlign: TextAlign.center,
              textColor: kFF5E5E5E,
              textFontSize: 11.sp,
              textfontWeight: FontWeight.w500,
              textLines: 10,
              textData: 'No need for scrolling through endless Pet Sitters',
            ),

            //divider with gradient
            Container(
              height: 1.h,
              width: 302.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kFF46D1B8.withOpacity(0.0),
                    kFF46D1B8,
                    kFF46D1B8.withOpacity(0.0),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: PoppinsTextStyle(
                textAlign: TextAlign.center,
                textColor: kFF5E5E5E,
                textFontSize: 11.sp,
                textfontWeight: FontWeight.w400,
                textLines: 10,
                textData:
                    'Earn 1% back in Whiskers Rewards for use on future bookings every time you pay a sitter through Whiskers Away',
              ),
            ),
          ],
        ),
      ),
    );
  }

  getcustomeFrame() {
    return ClipPath(
      clipper: Shape4(),
      child: Container(
        color: const Color(0xffE8FAF6),
        height: 201.h,
        width: 271.86.w,
        child: Image.asset(
          selfeWithDog,
          height: 201.h,
          width: 271.86,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
