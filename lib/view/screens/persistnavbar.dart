
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:intent/core/colors/colors.dart';
import 'package:intent/view/screens/chatScreen.dart';
import 'package:intent/view/screens/homeScreen.dart';
import 'package:intent/view/screens/postscreen.dart';
import 'package:intent/view/screens/profilescreen.dart';
import 'package:intent/view/screens/searchscreen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sizer/sizer.dart';

class PersistNavBar extends StatelessWidget {
  const PersistNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

_controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(context, screens: _screens(),
    
    controller: _controller,
    // confineInSafeArea: true,
    items: _navBarItems(),
    // margin: EdgeInsets.all(5 ),
    hideNavigationBarWhenKeyboardShows: true,
    //  backgroundColor: Color.fromARGB(136, 115, 213, 231),
    // navBarStyle: NavBarStyle.style12,
    decoration:const NavBarDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(18) ,topRight:Radius.circular(18) )),
    );
    
  }
  List<Widget>_screens(){
    return[
    const  HomeScreen(),
     const ChatScreen(),
     const PostScreen(),
     const SearchSreen(),
     const ProfileScreen(),
      
    ];
  }
  List<PersistentBottomNavBarItem>_navBarItems(){
    return [
       PersistentBottomNavBarItem(
                icon: SvgPicture.asset('asset/Icons/home-svgrepo-com (1).svg',width: 8.h,height: 8.h,color: textColors,),
                title: ("Home"),
               textStyle: GoogleFonts.outfit(textStyle: TextStyle(fontSize: 12.sp),),
                activeColorPrimary: CupertinoColors.activeBlue,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
             PersistentBottomNavBarItem(
                icon: SvgPicture.asset('asset/Icons/chat-svgrepo-com (2).svg',width: 10.h,height: 10.h,color: textColors),
                title: ("Chat"),
                 textStyle: GoogleFonts.outfit(textStyle: TextStyle(fontSize: 12.sp),),
                activeColorPrimary: CupertinoColors.activeBlue,
                 inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
                icon: SvgPicture.asset('asset/Icons/plus-svgrepo-com.svg',width: 10.h,height: 10.h,color: textColors),
                title: ("Post"),
                 textStyle: GoogleFonts.outfit(textStyle: TextStyle(fontSize: 12.sp),),
                activeColorPrimary: CupertinoColors.activeBlue,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
                icon:SvgPicture.asset('asset/Icons/search-svgrepo-com.svg',width: 10.h,height: 10.h,color: textColors),
                title: ("Search"),
                 textStyle: GoogleFonts.outfit(textStyle: TextStyle(fontSize: 12.sp),),
                activeColorPrimary: CupertinoColors.activeBlue,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
                icon: SvgPicture.asset('asset/Icons/user-svgrepo-com.svg',width: 10.h,height: 10.h,color: textColors),
                title: ("Profile"),
                 textStyle: GoogleFonts.outfit(textStyle: TextStyle(fontSize: 12.sp),),
                activeColorPrimary: CupertinoColors.activeBlue,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),

    ];

  }
}