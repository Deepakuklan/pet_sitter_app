import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_sitter_app/constant.dart';
import 'package:pet_sitter_app/helper/circlehelper.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/customshape.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  _Onboarding1State createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
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
                        height: 55.44.h,
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
    Size screensize = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: screensize.width,
          height: screensize.height,
        ),
        //right circle
        Positioned(
          top: -28.h,
          right: -21.w,
          child: Circlehelper(
            circleHeight: 124.h,
            circleWidht: 124.w,
            circleGradientColor: LinearGradient(colors: [
              kFF4ECEAF.withOpacity(0.2),
              kFF63DFC1.withOpacity(0.2)
            ]),
          ),
        ),

        Positioned(
          top: 56.h,
          right: -15.w,
          child: Circlehelper(
            circleHeight: 59.h,
            circleWidht: 59.w,
            circlesingleColor: kFFA7E9DA.withOpacity(0.3),
          ),
        ),

        //left side half circle
        Positioned(
          top: 370.h,
          right: 292.w,
          child: getcustometrangle(),
        ),

        //bluer

        //top center  bluer
        Positioned(
          top: 41.h,
          left: 77.w,
          child: Circlehelper(
            circleHeight: 68.h,
            circleWidht: 68.w,
            circleBoxShadowcColor: kFF4ECEAF.withOpacity(0.5),
            circleBoxShadowblurRadius: 106,
          ),
        ),

        // middle right bluer
        Positioned(
          top: 396.h,
          left: 341.w,
          child: Circlehelper(
            circleHeight: 68.h,
            circleWidht: 68.w,
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
    return Stack(
      children: [
        Center(
          child: getcustomeShape(),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Center(
            child: Image.asset(
              walkWithDog,
              height: 161.h,
              width: 270.w,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
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
              textData: 'Morris County\'s Exclusive Pet Sitting App',
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
              textData: 'The Pet Sitting App created by Pet Sitters',
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
              padding: EdgeInsets.symmetric(horizontal: 11.w),
              child: PoppinsTextStyle(
                textAlign: TextAlign.center,
                textColor: kFF5E5E5E,
                textFontSize: 11.sp,
                textfontWeight: FontWeight.w400,
                textLines: 10,
                textData:
                    'Earn \$1 in Whiskers Rewards for use on your own future pet sitting needs every time you book a gig through Whiskers Away',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
