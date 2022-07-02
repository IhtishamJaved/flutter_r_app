import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:r_app/views/pages/customer_screen/customer_screen.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';
import '../pages/home_screen/home_screen.dart';
import '../pages/more_screen/more_screen.dart';
import '../pages/overview_sale_screen/overview_sale_screen.dart';

// ignore: use_key_in_widget_constructors
class BottomNavigationTabBar extends StatefulWidget {
  @override
  _BottomNavigationTabBarState createState() => _BottomNavigationTabBarState();
}

class _BottomNavigationTabBarState extends State<BottomNavigationTabBar> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  PageController pageController;
  int pageIndex = 0;

  int currentTab = 0;

  final PageStorageBucket bucket = PageStorageBucket();

  // final List<Widget> screens = [
  //   HomeScreen(),
  //   SearchScreen(),
  //   MessageView(),
  //   SettingScreen(),
  // ];
  Widget currentScreen = const HomeScreen();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      key: _scaffoldKey,
      // backgroundColor: const Color.fromRGBO(46, 12, 58, 1),
      resizeToAvoidBottomInset: false,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(top: 4 * SizeConfig.heightMultiplier),
          height: 80,
          width: 65,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: primarycolor,
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 4 * SizeConfig.heightMultiplier,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: -15,
        // ignore: sized_box_for_whitespace
        child: Container(
          height: (size.height / 100) * 8,
          width: size.width,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  AnimatedContainer(
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: size.width * .110,
                      height: size.width * .009,
                      color:
                          currentTab == 0 ? primarycolor : Colors.transparent),
                  MaterialButton(
                    minWidth: (size.width / 100) * 2,
                    onPressed: () {
                      setState(() {
                        // ignore: prefer_const_constructors
                        currentScreen = HomeScreen();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      children: [
                        currentTab == 0
                            ? Icon(
                                Icons.home_filled,
                                size: (size.height / 100) * 4,
                                color: primarycolor,
                              )
                            : Icon(Icons.home_filled,
                                size: (size.height / 100) * 4,
                                color: const Color.fromRGBO(26, 26, 26, 0.2)),
                        currentTab == 0
                            ? Text(
                                "Home",
                                style: TextStyle(
                                    fontSize: 1.3 * SizeConfig.textMultiplier,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Quicksand"),
                              )
                            : Text(
                                "Home",
                                style: TextStyle(
                                    fontSize: 1.3 * SizeConfig.textMultiplier,
                                    color: const Color(0xff5B6974),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Quicksand"),
                              )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: size.width * .115,
                    height: size.width * .009,
                    color: currentTab == 1 ? primarycolor : Colors.transparent,
                  ),
                  MaterialButton(
                    minWidth: (size.width / 100) * 3,
                    onPressed: () {
                      setState(() {
                        currentScreen = const CustomerScreen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 0.7 * SizeConfig.heightMultiplier,
                        ),
                        currentTab == 1
                            ? Icon(
                                FontAwesomeIcons.users,
                                size: (size.height / 100) * 3,
                                color: primarycolor,
                              )
                            : Icon(FontAwesomeIcons.users,
                                size: (size.height / 100) * 3,
                                color: const Color.fromRGBO(26, 26, 26, 0.2)),
                        SizedBox(
                          height: 0.2 * SizeConfig.heightMultiplier,
                        ),
                        currentTab == 1
                            ? Text(
                                "Customers",
                                style: TextStyle(
                                    fontSize: 1.3 * SizeConfig.textMultiplier,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand"),
                              )
                            : Text(
                                "Customers",
                                style: TextStyle(
                                    fontSize: 1.3 * SizeConfig.textMultiplier,
                                    color: const Color(0xff5B6974),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Quicksand"),
                              )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    color: Colors.red,
                    width: 21 * SizeConfig.widthMultiplier,
                  ),
                ],
              ),
              // SizedBox(
              //   width: size.width * 0.19,
              // ),
              Column(
                children: [
                  AnimatedContainer(
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: size.width * .110,
                      height: size.width * .009,
                      color:
                          currentTab == 2 ? primarycolor : Colors.transparent),
                  MaterialButton(
                    minWidth: (size.width / 100) * 3,
                    onPressed: () {
                      setState(() {
                        currentScreen = const OverviewSaleScreen();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      children: [
                        currentTab == 2
                            ? Icon(
                                MdiIcons.chartLine,
                                size: (size.height / 100) * 4,
                                color: primarycolor,
                              )
                            : Icon(MdiIcons.chartLine,
                                size: (size.height / 100) * 4,
                                color: const Color.fromRGBO(26, 26, 26, 0.2)),
                        currentTab == 2
                            ? Text(
                                "Sales",
                                style: TextStyle(
                                    fontSize: 1.3 * SizeConfig.textMultiplier,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand"),
                              )
                            : Text(
                                "Sales",
                                style: TextStyle(
                                    fontSize: 1.3 * SizeConfig.textMultiplier,
                                    color: const Color(0xff5B6974),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Quicksand"),
                              )
                      ],
                    ),
                  )
                ],
              ),
              // SizedBox(
              //   width: size.width * 0.02,
              // ),
              Column(
                children: [
                  AnimatedContainer(
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: size.width * .110,
                      height: size.width * .009,
                      color:
                          currentTab == 3 ? primarycolor : Colors.transparent),
                  MaterialButton(
                    minWidth: (size.width / 100) * 3,
                    onPressed: () {
                      setState(() {
                        currentScreen = const MoreScreen();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      children: [
                        currentTab == 3
                            ? Icon(
                                FeatherIcons.menu,
                                size: (size.height / 100) * 4,
                                color: primarycolor,
                              )
                            : Icon(FeatherIcons.menu,
                                size: (size.height / 100) * 4,
                                color: const Color.fromRGBO(26, 26, 26, 0.2)),
                        currentTab == 3
                            ? Text(
                                "More",
                                style: TextStyle(
                                    fontSize: 1.3 * SizeConfig.textMultiplier,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand"),
                              )
                            : Text(
                                "More",
                                style: TextStyle(
                                    fontSize: 1.3 * SizeConfig.textMultiplier,
                                    color: const Color(0xff5B6974),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Quicksand"),
                              )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
