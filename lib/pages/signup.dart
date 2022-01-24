import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_sitter_app/constant.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/customshape.dart';
import 'package:pet_sitter_app/helper/mybutton.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';
import 'package:pet_sitter_app/helper/textformitems.dart';
import 'package:pet_sitter_app/pages/signup.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? ontapUser;

  List<GetTextformdummy> loginitemsData = [
    GetTextformdummy(
      itemsHint: 'Enter your name',
      itemsLable: 'Full Name',
      itemsPreFixIcon: Image.asset(
        userName,
        height: 18.41.h,
        width: 14.34.w,
      ),
      obscureText: false,
    ),
    GetTextformdummy(
      itemsHint: 'Enter your Username / Email',
      itemsLable: 'Username ',
      itemsPreFixIcon: Image.asset(
        name,
        height: 18.41.h,
        width: 14.34.w,
      ),
      obscureText: false,
    ),
    GetTextformdummy(
      itemsHint: 'Enter your email address',
      itemsLable: 'Email ',
      itemsPreFixIcon: Image.asset(
        email,
        height: 18.41.h,
        width: 14.34.w,
      ),
      obscureText: false,
    ),
    GetTextformdummy(
      itemsHint: 'Enter your phone number',
      itemsLable: 'Phone Number ',
      itemsPreFixIcon: Image.asset(
        phone,
        height: 18.41.h,
        width: 14.34.w,
      ),
      obscureText: false,
    ),
    GetTextformdummy(
      itemsHint: 'Enter your address',
      itemsLable: 'Address ',
      itemsPreFixIcon: Image.asset(
        location,
        height: 18.41.h,
        width: 14.34.w,
      ),
      obscureText: false,
    ),
    GetTextformdummy(
        itemsHint: 'Enter your password',
        itemsLable: 'Password',
        itemsPreFixIcon: Image.asset(
          userPassword,
          height: 18.41.h,
          width: 14.34.w,
        ),
        itemsSuffixIcon: SizedBox(
          child: Image.asset(
            eye,
            height: 18.41.h,
            width: 14.34.w,
          ),
        ),
        obscureText: true),
  ];

  @override
  Widget build(BuildContext context) {
    return _mainCode();
  }

  Widget _mainCode() {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _getDogAvtar(),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              _getHadingText(),
              SizedBox(
                height: 6.h,
              ),
              _getFormField(),
              SizedBox(
                height: 44.h,
              ),
              _getLoginAndSignButton(),
              SizedBox(
                height: 41.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getDogAvtar() {
    return Stack(
      children: [
        ClipPath(
          clipper: BezierClipper(),
          child: Image.asset(
            dogAvtar,
            width: 165.w,
            height: 176.58.h,
            fit: BoxFit.cover,
          ),
        ),
        CustomPaint(
          painter: BorderPainter(),
          child: SizedBox(
            width: 165.w,
            height: 176.h,
          ),
        ),
      ],
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

  _getFormField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //textform List
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: loginitemsData.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 335.w,
                  child: GetTextformdummy(
                    itemsLable: loginitemsData[index].itemsLable,
                    itemsPreFixIcon: loginitemsData[index].itemsPreFixIcon,
                    itemsHint: loginitemsData[index].itemsHint,
                    itemsSuffixIcon: loginitemsData[index].itemsSuffixIcon,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                )
              ],
            );
          },
        ),
      ],
    );
  }

  _getLoginAndSignButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          //  Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const MySlider(),
          //   ),
          // ),
          child: CustomContainer(
            // containerWidth: 335.w,
            containerWidget: MyButton(
              buttonHeight: 40.h,
              buttonWidht: 160.w,
              buttonBorderRadius: 9.r,
              buttonTextData: Center(
                child: UbuntuTextStyle(
                  textColor: Colors.white,
                  textFontSize: 16.sm,
                  textfontWeight: FontWeight.w400,
                  textData: 'Sign Up',
                  textAlign: TextAlign.center,
                  textLines: 10,
                ),
              ),
              buttonBackGroundColorwithGradient: const LinearGradient(
                colors: [
                  Color(0xff4ECEAF),
                  Color(0xff63DFC1),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: UbuntuTextStyle(
                textColor: kFFB8B8B8,
                textFontSize: 13.sm,
                textfontWeight: FontWeight.w400,
                textData: 'Already have an account?',
                textAlign: TextAlign.center,
                textLines: 10,
              ),
              onPressed: () {},
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Login(),
                ),
              ),
              child: UbuntuTextStyle(
                textColor: kFF46D1B8,
                textFontSize: 13.sm,
                textfontWeight: FontWeight.w500,
                textData: 'Log In',
                textAlign: TextAlign.center,
                textLines: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
