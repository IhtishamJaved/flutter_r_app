import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import '../../../model/customer_model.dart';
import '../customer_editprofile_screen/customer_editprofile_screen.dart';

enum Options { editprofile, cancelmembership }

class CustomerDetailScreen extends StatefulWidget {
  const CustomerDetailScreen({Key key, @required this.index}) : super(key: key);
  final int index;

  @override
  State<CustomerDetailScreen> createState() => _CustomerDetailScreenState();
}

class _CustomerDetailScreenState extends State<CustomerDetailScreen> {
  var popupMenuItemIndex = 0;

  Color changeColorAccordingToMenuItem = Colors.red;

  var appBarHeight = AppBar().preferredSize.height;
  String val;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5 * SizeConfig.widthMultiplier,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 4 * SizeConfig.heightMultiplier,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.transparent,
                  height: 3 * SizeConfig.heightMultiplier,
                  width: 6 * SizeConfig.widthMultiplier,
                  child: Icon(
                    Icons.keyboard_backspace,
                    size: 4 * SizeConfig.heightMultiplier,
                    color: textcolor,
                  ),
                ),
                // IconButton(
                //   onPressed: () {
                //     Get.back();
                //   },
                //   icon: const Icon(Icons.keyboard_backspace),
                // ),
                const Spacer(),
                _popUpMenu(),
                // SizedBox(
                //   width: 4 * SizeConfig.widthMultiplier,
                // )
              ],
            ),
            SizedBox(
              height: 3 * SizeConfig.heightMultiplier,
            ),
            Text(
              customermodel[widget.index].name,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Quicksand",
                fontSize: 3 * SizeConfig.textMultiplier,
                color: textcolor,
              ),
            ),
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            headingtext("Customer ID"),
            SizedBox(
              height: 1 * SizeConfig.heightMultiplier,
            ),
            descriptiontext(customermodel[widget.index].customerid),
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            headingtext("Customer Type"),
            SizedBox(
              height: 1 * SizeConfig.heightMultiplier,
            ),
            descriptiontext(customermodel[widget.index].customertype),
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            headingtext("Membership Tier"),
            SizedBox(
              height: 1 * SizeConfig.heightMultiplier,
            ),
            descriptiontext(customermodel[widget.index].membershipTier),
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            headingtext("Email address"),
            SizedBox(
              height: 1 * SizeConfig.heightMultiplier,
            ),
            descriptiontext(customermodel[widget.index].emailaddress),
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            headingtext("Contact No."),
            SizedBox(
              height: 1 * SizeConfig.heightMultiplier,
            ),
            descriptiontext(customermodel[widget.index].contactnumber),
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            headingtext("Comment (only you can see this)"),
            SizedBox(
              height: 1 * SizeConfig.heightMultiplier,
            ),
            descriptiontext(customermodel[widget.index].comment),
          ],
        ),
      )),
    );
  }

  Text descriptiontext(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: "Quicksand",
        fontSize: 1.6 * SizeConfig.textMultiplier,
        color: textcolor,
      ),
    );
  }

  Text headingtext(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: "Quicksand",
        fontSize: 1.8 * SizeConfig.textMultiplier,
        color: textcolor,
      ),
    );
  }

  _popUpMenu() {
    return PopupMenuButton(
      child: const Icon(
        Icons.more_vert,
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
        _buildPopupMenuItem('Edit Profile', LineAwesomeIcons.pen,
            Options.editprofile.index, false, false),
        _buildPopupMenuItem('Cancel Membership', EvaIcons.personDeleteOutline,
            Options.cancelmembership.index, false, true),
      ],
    );
  }

  PopupMenuItem _buildPopupMenuItem(String title, IconData iconData,
      int position, bool show, bool showcolor) {
    return PopupMenuItem(
      value: position,
      child: Container(
        color: Colors.transparent,
        width: 21 * SizeConfig.heightMultiplier,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
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
    );
  }

  _onMenuItemSelected(int value) {
    setState(() {
      popupMenuItemIndex = value;
    });

    if (value == Options.editprofile.index) {
      Get.to(() => const CustomerEditProfileScreen());
    } else {
      changeColorAccordingToMenuItem = Colors.purple;
    }
  }
}
