import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent/core/Sizes/size.dart';
import 'package:intent/core/colors/colors.dart';
import 'package:intent/view/screens/login.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
           const LoginTitles(
              title: 'Register !',
              subTitle: 'Create account by filling the form below .',
            ),
            const ProfilePicture(),
            h2,
            const TextformField(
              hintText: 'Name',
              svgPath: 'asset/Icons/User.svg',
            ),
            h1,
            const TextformField(
              hintText: 'Enter email',
              svgPath: 'asset/Icons/fi_mail.svg',
            ),
            h1,
            const TextformField(
              hintText: 'Enter phone number',
              svgPath: 'asset/Icons/u_phone.svg',
            ),
            h1,
            const TextformField(
              hintText: 'Password',
              svgPath: 'asset/Icons/padlock 1.svg',
            ),
            h1,
            const TextformField(hintText: 'Conform password', svgPath: ''),
            h2,
            h1,
            h2,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:const [
                  UserSelectButton(
                    user: 'Interviewer',
                  ),
                  UserSelectButton(
                    user: 'Interviewee',
                  ),
                ],
              ),
            ),
            h1,
            h2,
            SizedBox(
              width: 80.w,
              height: 7.h,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const LoginScreen());
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
                    'Create account',
                    style: GoogleFonts.outfit(
                        textStyle: TextStyle(
                            fontSize: 18.sp,
                            color: cBlack,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
            h1,
           const RegisterRichText(normal: 'Do you have already have account ?', button: ' LOGIN',),
           h2,
           h2,
          ],
        ),
      )),
    );
  }
}

class RegisterRichText extends StatelessWidget {
  final String normal;
  final String button;
  const RegisterRichText({
    required this.normal,
    required this.button,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: normal,
          style: GoogleFonts.outfit(
              textStyle: TextStyle(fontSize: 10.5.sp, color: cBlack)),
          children: [
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap=(){Get.to(const LoginScreen());},
                text: button,
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.bold,
                ))
          ]),
    );
  }
}

class UserSelectButton extends StatelessWidget {
final  String user;
 const UserSelectButton({
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.h,
      child: ElevatedButton(
        onPressed: () {},
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
            user,
            style: GoogleFonts.outfit(
                textStyle: TextStyle(
                    fontSize: 15.sp,
                    color: cBlack,
                    fontWeight: FontWeight.w500)),
          ),
        ),
      ),
    );
  }
}

class TextformField extends StatelessWidget {
  final String hintText;
  final String svgPath;

  const TextformField({Key? key, required this.hintText, required this.svgPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 2.5.h, top: 3.h),
          child: SvgPicture.asset(
            svgPath,
            matchTextDirection: true,
            width: 4.h,
            height: 4.h,
            color: grey800,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 2.h, right: 3.h),
            child: TextFormField(
                decoration: InputDecoration(
              contentPadding: EdgeInsets.only(right: 2.h),
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 10.sp),
            )),
          ),
        ),
      ],
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Colors.amber,
        radius: 10.4.h,
        child: CircleAvatar(
          radius: 10.h,
          backgroundImage: const NetworkImage(
              'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80'),
        ));
  }
}

class LoginTitles extends StatelessWidget {
  final String title;
  final String? subTitle;

 const LoginTitles({Key? key, required this.title,  this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 15.h,
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.outfit(
                  textStyle: TextStyle(
                      color: cBlack,
                      letterSpacing: 2,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold)),
            ),
            Text(
              subTitle??'',
              style: GoogleFonts.outfit(
                  textStyle: TextStyle(
                color: cBlack,
                fontSize: 9.sp,
              )),
            )
          ],
        ),
      ),
    );
  }
}
