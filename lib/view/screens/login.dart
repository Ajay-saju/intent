import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent/core/Sizes/sizes.dart';
import 'package:intent/core/colors/color.dart';
import 'package:intent/view/screens/persistnavbar.dart';
import 'package:intent/view/screens/signup.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const LoginTitles(title: 'Login !'),
                  h10,
                  const LoginTextField(
                    hintText: 'Email',
                  ),
                  h2,
                  h2,
                  const LoginTextField(hintText: 'Password'),
                  h10,
                  const LoginButtons(
                    hintText: 'Sign in',
                  ),
                  h2,
                  Text(
                    'OR',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                  h2,
                  const LoginButtons(hintText: 'Login with OTP'),
                  h2,
                  const RegisterRichText(
                      normal: 'Don\'t have account ?', button: ' Create now')
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class LoginButtons extends StatelessWidget {
  final String hintText;
  const LoginButtons({
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.h,
      child: ElevatedButton(
        onPressed: () {
           Get.to(const PersistNavBar());
        },
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(.5.h),
          ),
          elevation: 15.0,
        ),
        child: Padding(
          padding: EdgeInsets.all(1.h),
          child: Text(
            hintText,
            style: GoogleFonts.outfit(
              fontSize: 22.sp,
              color: cBlack,
              letterSpacing: 1.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class LoginTextField extends StatelessWidget {
  final String hintText;
  const LoginTextField({
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h, right: 4.h),
      child: TextFormField(
          decoration: InputDecoration(
        contentPadding: EdgeInsets.only(right: 2.h),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 15.sp),
      )),
    );
  }
}
