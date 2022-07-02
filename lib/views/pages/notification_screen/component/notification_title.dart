import 'package:flutter/material.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';

class NotificationTitle extends StatelessWidget {
  const NotificationTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3 * SizeConfig.heightMultiplier),
      height: 15.3 * SizeConfig.heightMultiplier,
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Title Goes Here",
            style: TextStyle(
                color: textcolor,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w700,
                fontSize: 2 * SizeConfig.textMultiplier),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore...",
            style: TextStyle(
                color: textcolor,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w400,
                fontSize: 1.7 * SizeConfig.textMultiplier),
          ),
          SizedBox(
            height: 1 * SizeConfig.heightMultiplier,
          ),
          Text(
            "2h ago",
            style: TextStyle(
                color: textcolor,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w400,
                fontSize: 1.7 * SizeConfig.textMultiplier),
          ),
          SizedBox(
            height: 1 * SizeConfig.heightMultiplier,
          ),
          Text(
            "Action Button",
            style: TextStyle(
                color: primarycolor,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w600,
                fontSize: 1.8 * SizeConfig.textMultiplier),
          ),
          const Divider(
            color: Color(0xffE3E3E3),
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
