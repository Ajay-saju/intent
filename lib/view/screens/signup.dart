import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:intent/core/colors/colors.dart';
import 'package:sizer/sizer.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          loginTitles(title: 'register !', subTitle: 'Create account by filling the form below .',),
          Profile_Picture(),
          

        ],
      )),
    );
  }
}

class Profile_Picture extends StatelessWidget {
  const Profile_Picture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundColor: Colors.amber,radius: 10.4.h, child: CircleAvatar(radius: 10.h, backgroundImage: NetworkImage('https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80'),));
  }
}

class loginTitles extends StatelessWidget {
  String title;
  String subTitle;

  
   loginTitles({

    Key? key,
    required this.title,
    required this.subTitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 1.h),
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
              subTitle,
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
