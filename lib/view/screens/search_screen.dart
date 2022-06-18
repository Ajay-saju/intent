import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../core/Sizes/sizes.dart';
import '../../core/colors/color.dart';

class SearchSreen extends StatelessWidget {
  const SearchSreen({Key? key}) : super(key: key);

//   TabController? controller;
//  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TabController ? _controller ;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 5.h),
              Padding(
                padding: EdgeInsets.all(2.5.h),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1.h),
                  child: TextField(
                    style: TextStyle(fontSize: 13.sp),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        fillColor: buttonColor,
                        border: InputBorder.none,
                        hintText: 'Search here',
                        filled: true,
                        hintStyle: TextStyle(
                            color: Colors.black26,
                            fontFamily: 'Poppins-Regular',
                            fontSize: 13.sp),
                        suffixIcon: Icon(
                          Icons.search_rounded,

                          // FeatherIcons.search,
                          color: Colors.black,
                          size: 17.sp,
                        )),
                    onChanged: (value) {},
                  ),
                ),
                // child: CupertinoSearchTextField(
                //   itemColor: cBlack,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10.h),
                //       color: const Color.fromARGB(198, 223, 235, 241),
                //       border: Border.all(color: cBlack)),
                // ),
              ),
              h2,
              DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      // width: double.infinity,
                      child: TabBar(
                        // isScrollable: true,
                        //  controller: controller,
                        indicatorColor: cBlack,
                        indicatorWeight: .1.h,
                        indicatorPadding:
                            EdgeInsets.only(left: 5.h, right: 5.h),
                        tabs: [
                          Tab(
                              height: 13.h,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'asset/images/interview 1.png',
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    'Interviewer',
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.outfit(
                                        color: Colors.black,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )),
                          Tab(
                              height: 13.h,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'asset/images/job-loss 1.png',
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    'Interviewee',
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.outfit(
                                        color: Colors.black,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                    h2,
                    LimitedBox(
                      maxHeight: MediaQuery.of(context).size.height,
                      child: const TabBarView(
                          // controller: controller,
                          children: [
                            CardGridView(),
                            // ListView.separated(itemBuilder: (context, index) => Text('dadaaaa'), separatorBuilder: (context, index)=> SizedBox(height: 30,), itemCount: 20),
                            CardGridView()
                            // Text('page2')
                          ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardGridView extends StatelessWidget {
  const CardGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          mainAxisSpacing: .3.h,
          crossAxisSpacing: .3.h,
        ),
        itemCount: 20,
        itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(2.h),
              child: const ProfileCard(),
            ));
  }
}

class ProfileCard extends StatelessWidget {
  // final String imagePath;
  // final String profileName;
  // final String domainName;
  const ProfileCard({
    // required this.imagePath,
    // required this.profileName,
    // required this.domainName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          //  child: Container(height: 10,color: cBlack,),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(1.h)),
              color: const Color.fromRGBO(128, 199, 255, 0.4),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    // imagePath
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgPZnsoh9tlFnoEK79W2lmMJBleVBBLFb81Q&usqp=CAU',
                  ))),
        ),
        Container(
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(1.h),
                bottomRight: Radius.circular(1.h)),
          ),
          // alignment: Alignment.bottomCenter,
          height: 6.5.h,
          width: double.infinity,

          child: Padding(
            padding: EdgeInsets.all(.8.h),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                DefaultTextWidget(text: 'Muneer', fontSize: 12, color: cBlack,),
               
                DefaultTextWidget(text: 'MERN Stack Developer', fontSize: 9, color: cBlack,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DefaultTextWidget extends StatelessWidget {
  final String text;
  final int fontSize;
  final Color color;
  const DefaultTextWidget({
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
      style: GoogleFonts.outfit(
          color:color,
          fontSize: fontSize.sp,
          fontWeight: FontWeight.w500),
    );
  }
}
