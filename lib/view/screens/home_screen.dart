import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent/core/Sizes/sizes.dart';
import 'package:intent/core/colors/color.dart';
import 'package:intent/view/screens/search_screen.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
            
            h4,

            const TitleTextWidget(
                color: textColors, text: 'Hi Ajay Saju', fontSize: 20),
            h2,
            Padding(
              padding: EdgeInsets.only(right: 3.5.h),
              child: Text(
                "Top Interviewer's",
                style: GoogleFonts.outfit(fontWeight: FontWeight.w500),
              ),
            ),
            h2,
            LimitedBox(
                maxHeight: 15.h,
                maxWidth: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) =>const CircleAvatar(

                          backgroundColor: cBlack,
                        )))
          ],
        ),
      )),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  final String text;
  final int fontSize;
  final Color color;
  const TitleTextWidget({
    required this.color,
    required this.text,
    required this.fontSize,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // domainName,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.prompt(
          color: color, fontSize: fontSize.sp, fontWeight: FontWeight.w500),
    );
  }
}
