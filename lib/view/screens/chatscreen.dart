import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intent/core/Sizes/size.dart';
import 'package:intent/core/colors/colors.dart';
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
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(1.5.h),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: buttonColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(2.h))),
                        width: double.infinity,
                        height: 90,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 9.5.h,
                                  child: CircleAvatar(
                                    radius: 5.h,
                                    backgroundImage: const NetworkImage(
                                        'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80'),
                                  )),

                              const Text(
                                'Benjamin',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: cBlack,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              const Spacer(),
                              // PopupMenuButton(
                              //   icon: const Icon(Icons.more_rounded),
                              //   itemBuilder: (context) => [
                              //     const PopupMenuItem(
                              //       value: '0',
                              //       child: Text('Delete'),
                              //     ),
                              //     const PopupMenuItem(
                              //       child: Text('Edit'),
                              //       value: '1',
                              //     )
                              //   ],
                              //   onSelected: (value) {
                              //     if (value == '0') {
                              //       context
                              //           .read<StudentDetailsCubit>()
                              //           .delete(studentList[index].key);
                              //       context.read<SearchBloc>().add(
                              //           SearchValueEvent(
                              //               searchValue: search));
                              //     }
                              //     if (value == '1') {
                              //       Navigator.push(
                              //           context,
                              //           MaterialPageRoute(
                              //               builder: (context) =>
                              //                   EditScreen(
                              //                     index: studentList[index].key, searchResult: search,
                              //                   )));
                              //     }
                              //   },
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      )),
    );
  }
}
