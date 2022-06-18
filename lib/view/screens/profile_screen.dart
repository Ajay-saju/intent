import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent/core/Sizes/sizes.dart';
import 'package:intent/core/colors/color.dart';
import 'package:intent/view/screens/search_screen.dart';
import 'package:intent/view/screens/signup.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          h4,
          const ProfilePicture(),
          h2,
          Column(
            children: [
              const DefaultTextWidget(
                text: 'Ajay Saju',
                fontSize: 20,
                color: textColors,
              ),
              h1,
              const DefaultTextWidget(
                  color: textColors, text: 'Flutter Developer', fontSize: 18),
              h2,

              // Container(
              //   height: .8.h,child: Column(
              //     children: [
              //       Row(children: [

              //       ],)
              //     ],
              //   ),

              // ),
              Padding(
                padding: EdgeInsets.all(2.h),
                child: Column(
                  children: [
                    const ProfilePageListTile(
                      profileTitle: "Post's",
                    ),
                    const ProfileDivider(),
                    const ProfilePageListTile(
                      profileTitle: "Networks",
                    ),
                    const ProfileDivider(),
                    const ProfilePageListTile(
                      profileTitle: "Interview",
                    ),
                    const ProfileDivider(),
                    const ProfilePageListTile(
                      profileTitle: "Notifications",
                    ),
                    const ProfileDivider(),
                    ListTile(
                      title: Text(
                        'Log out',
                        style: GoogleFonts.spaceGrotesk(
                            color: textColors,
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp),
                      ),
                      trailing: const Icon(
                        Icons.logout_rounded,
                        color: textColors,
                      ),
                    ),
                    ProfileDivider(),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class ProfilePageListTile extends StatelessWidget {
  final String profileTitle;

  const ProfilePageListTile({
    required this.profileTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        profileTitle,
        style: GoogleFonts.spaceGrotesk(
            color: textColors, fontWeight: FontWeight.w700, fontSize: 18.sp),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: textColors,
      ),
    );
  }
}

class ProfileDivider extends StatelessWidget {
  const ProfileDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1,
      color: Colors.grey,
    );
  }
}

List<String> title = [
  'Post',
  'Network',
  'Interview',
  'Notification',
  'Logout',
];
