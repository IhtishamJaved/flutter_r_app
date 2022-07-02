import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:r_app/contant/colors.dart';
import 'package:r_app/contant/sizeconfig.dart';
import 'package:r_app/views/pages/home_screen/component/home_header.dart';
import 'package:r_app/views/pages/home_screen/component/home_title.dart';
import 'package:get/get.dart';
import 'package:r_app/views/pages/notification_screen/notification_screen.dart';
import 'package:r_app/views/pages/view_profile_screen/view_profile_screen.dart';

enum Options { profile, switchOutlet, newOutlet, logOut }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 1 * SizeConfig.heightMultiplier,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const NotificationScreen());
                    },
                    child: Container(
                      height: 6 * SizeConfig.heightMultiplier,
                      width: 10 * SizeConfig.widthMultiplier,
                      decoration: const BoxDecoration(
                        //   color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.notifications_sharp),
                    ),
                  ),
                  SizedBox(
                    width: 2 * SizeConfig.widthMultiplier,
                  ),
                  _popUpMenu(),
                  SizedBox(
                    width: 2 * SizeConfig.widthMultiplier,
                  )
                ],
              ),
              SizedBox(
                height: 1 * SizeConfig.heightMultiplier,
              ),
              const HomeHeader(),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 4 * SizeConfig.widthMultiplier,
                  ),
                  Text(
                    "(10) Upcoming",
                    style: TextStyle(
                        color: textcolor,
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w700,
                        fontSize: 2 * SizeConfig.textMultiplier),
                  ),
                  const Spacer(),
                  Icon(MdiIcons.filterOutline,
                      color: textcolor, size: 3 * SizeConfig.textMultiplier),
                  Text(
                    "All Staffs",
                    style: TextStyle(
                        color: textcolor,
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w500,
                        fontSize: 1.8 * SizeConfig.textMultiplier),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: textcolor,
                    size: 3 * SizeConfig.heightMultiplier,
                  ),
                  SizedBox(
                    width: 2 * SizeConfig.widthMultiplier,
                  ),
                ],
              ),
              const HomeTitle(),
              const HomeTitle(),
              const HomeTitle(),
              const HomeTitle(),
              const HomeTitle(),
              const HomeTitle(),
            ],
          ),
        ),
      ),
    );
  }

  var popupMenuItemIndex = 0;

  Color changeColorAccordingToMenuItem = Colors.red;

  var appBarHeight = AppBar().preferredSize.height;

  _popUpMenu() {
    return PopupMenuButton(
      child: Container(
        height: 6 * SizeConfig.heightMultiplier,
        width: 12 * SizeConfig.widthMultiplier,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(
                  "assests/images/Screenshot 2022-03-29 at 1.36 1.png"),
              fit: BoxFit.cover),
        ),
      ),
      onSelected: (value) {
        _onMenuItemSelected(value as int);
      },
      offset: Offset(0.0, appBarHeight),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8.0),
          bottomRight: Radius.circular(8.0),
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
      ),
      itemBuilder: (ctx) => [
        _buildPopupMenuItem('View Profile', LineAwesomeIcons.user_circle,
            Options.profile.index, false, false),
        _buildPopupMenuItem('Switch Outlet', CupertinoIcons.add_circled,
            Options.switchOutlet.index, true, false),
        _buildPopupMenuItem('Add New Outlet', CupertinoIcons.add_circled,
            Options.newOutlet.index, false, false),
        _buildPopupMenuItem(
            'Log Out', Icons.logout_rounded, Options.logOut.index, false, true),
      ],
    );
  }

  PopupMenuItem _buildPopupMenuItem(String title, IconData iconData,
      int position, bool show, bool showcolor) {
    return PopupMenuItem(
      value: position,

      child: Container(
        color: Colors.transparent,
        width: 17.7 * SizeConfig.heightMultiplier,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            show
                ? const Iconify(Ph.user_switch)
                : Icon(
                    iconData,
                    color: showcolor ? primarycolor : Colors.black,
                  ),
            SizedBox(
              width: 2 * SizeConfig.widthMultiplier,
            ),
            Text(
              title,
              style: TextStyle(
                  color: showcolor ? primarycolor : textcolor,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.w700,
                  fontSize: 1.8 * SizeConfig.textMultiplier),
            ),
          ],
        ),
      ),
      // child:
    );
  }

  _onMenuItemSelected(int value) {
    setState(() {
      popupMenuItemIndex = value;
    });

    if (value == Options.profile.index) {
      Get.to(() => const ViewProfileScreen());
    } else if (value == Options.switchOutlet.index) {
      //   print("upload");
      changeColorAccordingToMenuItem = Colors.green;
    } else if (value == Options.newOutlet.index) {
      changeColorAccordingToMenuItem = Colors.blue;
    } else {
      changeColorAccordingToMenuItem = Colors.purple;
    }
  }
}
