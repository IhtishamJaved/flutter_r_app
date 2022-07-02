import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:r_app/views/pages/overview_sale_screen/monthly_overview_chart/monthly_overview_chart.dart';
import 'package:r_app/views/pages/overview_sale_screen/six_monthly_overview_chart/six_monthly_overview_chart.dart';
import 'package:r_app/views/pages/overview_sale_screen/year_overview_chart/year_overview_chart.dart';
import 'package:r_app/views/widgets/header_row.dart';

import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import '../home_screen/home_screen.dart';
import '../notification_screen/notification_screen.dart';
import '../view_profile_screen/view_profile_screen.dart';
import 'daily_overview_chat/daily_overview_chat.dart';

class OverviewSaleScreen extends StatefulWidget {
  const OverviewSaleScreen({Key key}) : super(key: key);

  @override
  State<OverviewSaleScreen> createState() => _OverviewSaleScreenState();
}

class _OverviewSaleScreenState extends State<OverviewSaleScreen> {
  int selectedindex = 0;
  List<Widget> pages = [
    const DailyOverviewChart(),
    const MonthlyOverviewChart(),
    const SixMonthlyOverviewChart(),
    const YearOverviewChart(),
  ];
  List dropDownListData = [
    {"title": "Hair Cut", "value": "1"},
    {"title": "Hair Dye", "value": "2"},
  ];

  String defaultValue = "";

  String secondDropDown = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: white,
          body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 4 * SizeConfig.widthMultiplier),
            child: Column(
              children: [
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
                    // SizedBox(
                    //   width: 2 * SizeConfig.widthMultiplier,
                    // ),
                  ],
                ),
                SizedBox(height: 4 * SizeConfig.heightMultiplier),
                const HeaderRow(
                  titletext: "Overview",
                  show: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    categories(),
                    SizedBox(
                      width: 5 * SizeConfig.widthMultiplier,
                    ),
                    Container(
                      height: 4.5 * SizeConfig.heightMultiplier,
                      width: 30 * SizeConfig.widthMultiplier,
                      padding: EdgeInsets.only(
                        bottom: .3 * SizeConfig.heightMultiplier,
                        left: 2 * SizeConfig.widthMultiplier,
                        right: 2 * SizeConfig.widthMultiplier,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffE3E3E3)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            //  isDense: true,
                            value: defaultValue,
                            isExpanded: true,
                            menuMaxHeight: 350,
                            icon: Icon(
                              CupertinoIcons.chevron_down,
                              color: textcolor,
                              size: 2 * SizeConfig.heightMultiplier,
                            ),
                            items: [
                              DropdownMenuItem(
                                  child: Text(
                                    "Customers",
                                    style: TextStyle(
                                        color: textcolor,
                                        fontFamily: "Quicksand",
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            1.8 * SizeConfig.textMultiplier),
                                  ),
                                  value: ""),
                              ...dropDownListData
                                  .map<DropdownMenuItem<String>>((data) {
                                return DropdownMenuItem(
                                  child: Text(
                                    data['title'],
                                    style: TextStyle(
                                        color: textcolor,
                                        fontFamily: "Quicksand",
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            1.8 * SizeConfig.textMultiplier),
                                  ),
                                  value: data['value'],
                                );
                              }).toList(),
                            ],
                            onChanged: (value) {
                              //         print("selected Value $value");
                              setState(() {
                                defaultValue = value;
                              });
                            }),
                      ),
                    ),
                  ],
                ),
                Expanded(child: pages[selectedindex])
              ],
            ),
          )),
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

  Widget categories() {
    return Row(
      children: [
        catogoriess("Past 7 days", 0),
        catogoriess("1 Mth", 1),
        catogoriess("6 Mths", 2),
        catogoriess("1 Yr", 3),
      ],
    );
  }

  Widget catogoriess(String text, int index) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedindex = index;
            });
          },
          child: Column(
            children: [
              Container(
                height: 4.5 * SizeConfig.heightMultiplier,
                padding: EdgeInsets.symmetric(
                  horizontal: 1.5 * SizeConfig.widthMultiplier,
                  vertical: 0.6 * SizeConfig.heightMultiplier,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: index == selectedindex
                        ? primarycolor
                        : Colors.transparent,
                  ),
                  color: index == selectedindex
                      ? const Color(0xFFFFF9F9)
                      : Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Quicksand",
                      fontSize: 1.5 * SizeConfig.textMultiplier,
                      color: index == selectedindex ? primarycolor : textcolor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
