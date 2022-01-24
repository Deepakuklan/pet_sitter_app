import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_sitter_app/helper/customcontainer.dart';
import 'package:pet_sitter_app/helper/mybutton.dart';
import 'package:pet_sitter_app/helper/textfielddumy.dart';

class TermsAndConditionsPetOwner extends StatefulWidget {
  const TermsAndConditionsPetOwner({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<TermsAndConditionsPetOwner> {
  bool isChecked = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait
        ? _mainSmall()
        : _mainLarge();
  }

//for Small screen
  _mainSmall() {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomContainer(
            containerWidth: double.maxFinite,
            containerWidget: Padding(
              padding: EdgeInsets.only(
                top: 88.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _getTopImageSmall(),
                  SizedBox(
                    height: 40.45.h,
                  ),
                  Center(
                    child: _getTermAndConditionSmall(),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Center(child: _getAgreeAndCheckBoxSmall()),
                  SizedBox(
                    width: double.maxFinite,
                    height: 45.h,
                  ),
                  Center(child: _getBottomButtonSmall()),
                  SizedBox(
                    height: 100.1.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _getTopImageSmall() {
    return Center(
      child: Image.asset(
        'assets/icon/t&C.png',
        width: 300.w,
        height: 206.h,
        fit: BoxFit.fill,
      ),
    );
  }

  _getTermAndConditionSmall() {
    return CustomContainer(
      containerWidth: 335.w,
      containerRadius: BorderRadius.circular(15.r),
      containerColor: const Color(0xFFFFFFFF),
      containerblurRadius: 30.r,
      containeroffset: const Offset(0, 4),
      containerspreadRadius: 0,
      containerBoxShadowColor: const Color.fromRGBO(0, 0, 0, 0.08),
      containerWidget: Padding(
        padding:
            EdgeInsets.only(left: 18.w, top: 24.h, right: 18.w, bottom: 18.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UbuntuTextStyle(
                textData: '''Terms & Conditions''',
                textFontSize: 20.sm,
                textfontWeight: FontWeight.w500,
                textColor: const Color(0xFF3D3D3D),
                textAlign: TextAlign.left,
                textLines: 20),
            SizedBox(
              height: 11.h,
            ),
            CustomContainer(
              containerHeight: 1.h,
              containerWidth: 297.w,
              containerGradient: const LinearGradient(
                colors: [
                  Color(0x0046D1B8),
                  Color(0xff46D1B8),
                  Color(0x0046D1B8)
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            UbuntuTextStyle(
              textData:
                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus et scelerisque risus quam porta aenean sed cursus. Vestibulum aliquet eros, euismod platea felis velit. Consectetur arcu proin vel laoreet. \n \n   Ante in fames scelerisque ridiculus elementum ornare pellentesque arcu. Volutpat nec nunc, ante in fames scelerisque ridiculus elementum ornare pellentesque arcu. Volutpat nec nunc, aliquet eros, euismod platea felis velit. Consectetur arcu proin vel laoreet. ''',
              textColor: const Color(0xFF5C5C5C),
              textfontWeight: FontWeight.w400,
              textFontSize: 14.sm,
              textAlign: TextAlign.left,
              textLines: 20,
            ),
            SizedBox(
              height: 17.h,
            ),
            UbuntuTextStyle(
              textData: '''Read more''',
              textColor: const Color(0xFF5EDABC),
              textfontWeight: FontWeight.w400,
              textFontSize: 12.sm,
              textAlign: TextAlign.left,
              textLines: 20,
              textTextDecoration: TextDecoration.underline,
            ),
          ],
        ),
      ),
    );
  }

  _getAgreeAndCheckBoxSmall() {
    return CustomContainer(
      containerWidth: 315.w,
      containerHeight: 16.h,
      containerWidget: Padding(
        padding: EdgeInsets.only(
          left: 4.w,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
              checkColor: Colors.white,
              // fillColor: MaterialStateProperty.,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            UbuntuTextStyle(
              textColor: const Color(0xFF5C5C5C),
              textfontWeight: FontWeight.w400,
              textFontSize: 12.sm,
              textAlign: TextAlign.left,
              textLines: 20,
              textData: 'I agree with the',
            ),
            UbuntuTextStyle(
              textColor: const Color(0xFF5EDABC),
              textfontWeight: FontWeight.w400,
              textFontSize: 12.sm,
              textAlign: TextAlign.left,
              textLines: 20,
              textTextDecoration: TextDecoration.underline,
              textData: 'Terms and Conditions',
            ),
          ],
        ),
      ),
    );
  }

  _getBottomButtonSmall() {
    return CustomContainer(
      // containerWidth: 335.w,
      containerWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
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
          SizedBox(
            width: 21.w,
          ),
          MyButton(
            buttonHeight: 40.h,
            buttonWidht: 160.w,
            buttonBorderRadius: 9.r,
            buttonBorderColor: const Color(0xff46D1B8),
            buttonBorderwitdh: 1.0.w,
            buttonTextData: Center(
              child: UbuntuTextStyle(
                textColor: const Color(0xff46D1B8),
                textFontSize: 16.sm,
                textfontWeight: FontWeight.w400,
                textData: 'Log In',
                textAlign: TextAlign.center,
                textLines: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

//for Large screen
  _mainLarge() {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomContainer(
            containerWidth: double.maxFinite,
            containerWidget: Padding(
              padding: EdgeInsets.only(
                top: 88.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _getTopImagelarge(),
                  SizedBox(
                    height: 40.45.h,
                  ),
                  Center(
                    child: _getTermAndConditionlarge(),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Center(child: _getAgreeAndCheckBoxlarge()),
                  SizedBox(
                    width: double.maxFinite,
                    height: 45.h,
                  ),
                  Center(child: _getBottomButtonlarge()),
                  SizedBox(
                    height: 100.1.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _getTopImagelarge() {
    return Center(
      child: Image.asset(
        'assets/icon/Group 176063.png',
        width: 150.w,
        // height: 187.h,
        fit: BoxFit.fill,
      ),
    );
  }

  _getTermAndConditionlarge() {
    return CustomContainer(
      containerWidth: 335.w,
      containerRadius: BorderRadius.circular(15.r),
      containerColor: const Color(0xFFFFFFFF),
      containerblurRadius: 30.r,
      containeroffset: const Offset(0, 4),
      containerspreadRadius: 0,
      containerBoxShadowColor: const Color.fromRGBO(0, 0, 0, 0.08),
      containerWidget: Padding(
        padding:
            EdgeInsets.only(left: 18.w, top: 24.h, right: 18.w, bottom: 18.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UbuntuTextStyle(
                textData: '''Terms & Conditions''',
                textFontSize: 20.sm,
                textfontWeight: FontWeight.w500,
                textColor: const Color(0xFF3D3D3D),
                textAlign: TextAlign.left,
                textLines: 20),
            SizedBox(
              height: 11.h,
            ),
            CustomContainer(
              containerHeight: 1.h,
              containerWidth: 297.w,
              containerGradient: const LinearGradient(
                colors: [
                  Color(0x0046D1B8),
                  Color(0xff46D1B8),
                  Color(0x0046D1B8)
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            UbuntuTextStyle(
              textData:
                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus et scelerisque risus quam porta aenean sed cursus. Vestibulum aliquet eros, euismod platea felis velit. Consectetur arcu proin vel laoreet. \n \n   Ante in fames scelerisque ridiculus elementum ornare pellentesque arcu. Volutpat nec nunc, ante in fames scelerisque ridiculus elementum ornare pellentesque arcu. Volutpat nec nunc, aliquet eros, euismod platea felis velit. Consectetur arcu proin vel laoreet. ''',
              textColor: const Color(0xFF5C5C5C),
              textfontWeight: FontWeight.w400,
              textFontSize: 14.sm,
              textAlign: TextAlign.left,
              textLines: 20,
            ),
            SizedBox(
              height: 17.h,
            ),
            UbuntuTextStyle(
              textData: '''Read more''',
              textColor: const Color(0xFF5EDABC),
              textfontWeight: FontWeight.w400,
              textFontSize: 12.sm,
              textAlign: TextAlign.left,
              textLines: 20,
              textTextDecoration: TextDecoration.underline,
            ),
          ],
        ),
      ),
    );
  }

  _getAgreeAndCheckBoxlarge() {
    return CustomContainer(
      containerWidth: 315.w,
      containerWidget: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //                   Checkbox(
          //   value: rememberMe,
          //   onChanged: _onRememberMeChanged
          // ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.w,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UbuntuTextStyle(
                  textColor: const Color(0xFF5C5C5C),
                  textfontWeight: FontWeight.w400,
                  textFontSize: 12.sm,
                  textAlign: TextAlign.left,
                  textLines: 20,
                  textData: 'I agree with the',
                ),
                UbuntuTextStyle(
                  textColor: const Color(0xFF5EDABC),
                  textfontWeight: FontWeight.w400,
                  textFontSize: 12.sm,
                  textAlign: TextAlign.left,
                  textLines: 20,
                  textTextDecoration: TextDecoration.underline,
                  textData: 'Terms and Conditions',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _getBottomButtonlarge() {
    return CustomContainer(
      // containerWidth: 335.w,
      containerWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            buttonHeight: 40.h,
            buttonWidht: 80.w,
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
          SizedBox(
            width: 21.w,
          ),
          MyButton(
            buttonHeight: 40.h,
            buttonWidht: 80.w,
            buttonBorderRadius: 9.r,
            buttonBorderColor: const Color(0xff46D1B8),
            buttonBorderwitdh: 1.0.h,
            buttonTextData: Center(
              child: UbuntuTextStyle(
                textColor: const Color(0xff46D1B8),
                textFontSize: 16.sm,
                textfontWeight: FontWeight.w400,
                textData: 'Log In',
                textAlign: TextAlign.center,
                textLines: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
