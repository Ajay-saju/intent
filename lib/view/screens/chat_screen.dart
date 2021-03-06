import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent/core/Sizes/sizes.dart';
import 'package:intent/core/colors/color.dart';
import 'package:intent/view/screens/signup.dart';
import 'package:sizer/sizer.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const LoginTitles(title: 'Inbox'),
          h2,
          Padding(
            padding: EdgeInsets.only(left: 2.h, right: 2.h),
            child: CupertinoSearchTextField(
              itemColor: cBlack,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.h),
                  color: const Color.fromARGB(198, 223, 235, 241),
                  border: Border.all(color: cBlack)),
            ),
          ),
          h2,
          Expanded(
            child: ListView.builder(
                itemCount: imagePath.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(1.5.h),
                    child: ChatListTile(
                      imagePath: imagePath[index],
                      title: title[index],
                      subtitle: subtitle[index],
                      msgNumber: msgNumber[index],
                    ),
                  );
                }),
          ),
        ],
      )),
    );
  }
}

class ChatListTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String msgNumber;

  const ChatListTile({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.msgNumber,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(2.h))),
        width: double.infinity,
        height: 90,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 5.h,
                backgroundImage: NetworkImage(imagePath),
              ),
              SizedBox(width: 1.2.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.outfit(
                        color: cBlack,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.outfit(
                        color: Colors.black54,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: textColors,
                radius: 1.7.h,
                child: Text(msgNumber),
              )
            ],
          ),
        ),
      ),
    );
  }
}

  List imagePath = [
  'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgPZnsoh9tlFnoEK79W2lmMJBleVBBLFb81Q&usqp=CAU',
  'https://image.shutterstock.com/image-photo/successful-businessman-standing-on-light-260nw-1202416018.jpg',
];
List title = ['Benjamin', 'Nadan', 'Thomas'];
List subtitle = ['interviewer', 'Interviewee', 'interviewer'];
List msgNumber = ['4', '7', '1'];


