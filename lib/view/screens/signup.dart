import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        Padding(
          padding:  EdgeInsets.only(left: 1.h),
          child: AppBar(backgroundColor: Colors.transparent,elevation: 0,toolbarHeight: 15.h, title: Text('Register !',style: GoogleFonts.aBeeZee(textStyle:TextStyle(color: Colors.black,letterSpacing: 2,fontSize: 25.sp,fontWeight: FontWeight.bold)),),),
        )

      ],)),
    );
    
  }
}