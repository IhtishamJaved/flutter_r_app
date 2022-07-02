import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../contant/colors.dart';
import '../../../../../../contant/sizeconfig.dart';

class MonthlyStaffContainer extends StatelessWidget {
  final Color color;
  const MonthlyStaffContainer({Key key,@required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier),
      height: 4 * SizeConfig.heightMultiplier,
      padding: EdgeInsets.only(top: .8 * SizeConfig.heightMultiplier),
      decoration: BoxDecoration(
        color: color,
      ),
      child: Row(
        children: [
          // SizedBox(
          //   width: 2 * SizeConfig.widthMultiplier,
          // ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: .2 * SizeConfig.heightMultiplier),
                color: Colors.transparent,
                width: 23 * SizeConfig.widthMultiplier,
                child: Row(
                  children: [
                    Text(
                      "Staff A",
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          fontSize: 1.5 * SizeConfig.textMultiplier),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: .2 * SizeConfig.heightMultiplier),
                color: Colors.transparent,
                width: 12 * SizeConfig.widthMultiplier,
                child: Row(
                  children: [
                    Text(
                      "100",
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          fontSize: 1.5 * SizeConfig.textMultiplier),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: .2 * SizeConfig.heightMultiplier),
                color: Colors.transparent,
                width: 23 * SizeConfig.widthMultiplier,
                child: Row(
                  children: [
                    Text(
                      "Staff A",
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          fontSize: 1.5 * SizeConfig.textMultiplier),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: .2 * SizeConfig.heightMultiplier),
                color: Colors.transparent,
                width: 27 * SizeConfig.widthMultiplier,
                child: Row(
                  children: [
                    Text(
                      "\$25000.00",
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          fontSize: 1.5 * SizeConfig.textMultiplier),
                    ),
                  ],
                ),
              )
            ],
          ),

          Column(
            children: [
              Container(
                width: 4 * SizeConfig.widthMultiplier,
                color: Colors.transparent,
                child: Icon(
                  CupertinoIcons.chevron_right_circle,
                  color: primarycolor,
                  size: 2.3 * SizeConfig.textMultiplier,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
