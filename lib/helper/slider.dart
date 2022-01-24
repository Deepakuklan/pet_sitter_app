import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/constant.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';
import 'package:pet_sitter_app/pages/login.dart';
import 'package:pet_sitter_app/pages/onbording1.dart';
import 'package:pet_sitter_app/pages/onbording2.dart';
import 'package:pet_sitter_app/pages/signup.dart';
import 'mybutton.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  int _curPage = 0;

  @override
  Widget build(BuildContext context) {
    return _mainCode();
  }

  _mainCode() {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (i) {
                  setState(
                    () {
                      _curPage = i;
                    },
                  );
                },
                children: const [
                  Onboarding1(),
                  Onboarding2(),
                ],
              ),
            ),
            //button
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 670.h,
                ),
                _getButton(),
                SizedBox(
                  height: 34.h,
                ),
                _getIndicator(_curPage)
              ],
            ),
          ],
        ),
      ),
    );
  }

  _getButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignUp(),
            ),
          ),
          child: MyButton(
            buttonHeight: 40.h,
            buttonWidht: 142.w,
            buttonBorderRadius: 9.r,
            buttonTextData: Center(
              child: UbuntuTextStyle(
                textData: 'Sign Up',
                textAlign: TextAlign.center,
                textColor: kWhiteColor,
                textFontSize: 16.sm,
                textfontWeight: FontWeight.w400,
                textLines: 10,
              ),
            ),
            buttonBackGroundColorwithGradient: const LinearGradient(
              colors: [
                kFF4ECEAF,
                kFF63DFC1,
              ],
            ),
          ),
        ),
        SizedBox(
          width: 5.1.w,
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Login(),
            ),
          ),
          child: MyButton(
            buttonHeight: 40.h,
            buttonWidht: 142.w,
            buttonBorderRadius: 9.r,
            buttonBorderColor: const Color(0xff46D1B8),
            buttonBorderwitdh: 1.0,
            buttonTextData: Center(
              child: UbuntuTextStyle(
                textAlign: TextAlign.center,
                textColor: kFF46D1B8,
                textFontSize: 16.sm,
                textfontWeight: FontWeight.w400,
                textLines: 10,
                textData: 'Log In',
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//icon
_getIndicator(int isActive) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 6.h,
        width: 6.h,
        decoration: BoxDecoration(
          color: isActive == 0 ? kFF46D1B8 : kFFE6E6E6,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
      ),
      SizedBox(
        width: 7.5.w,
      ),
      Container(
        height: 6.h,
        width: 6.h,
        decoration: BoxDecoration(
          color: isActive == 0 ? kFFE6E6E6 : kFF46D1B8,
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
        ),
      ),
    ],
  );
}
