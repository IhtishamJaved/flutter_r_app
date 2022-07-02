import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';

class SaleDetailContainer extends StatelessWidget {
  final String text;
  final Color color;
  const SaleDetailContainer(
      {Key key, @required this.text, @required this.color})
      : super(key: key);

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
                color: Colors.transparent,
                width: 36 * SizeConfig.widthMultiplier,
                child: Row(
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                color: Colors.transparent,
                width: 19 * SizeConfig.widthMultiplier,
                child: Row(
                  children: [
                    Text(
                      "100",
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                  ],
                ),
              )
            ],
          ),

          Column(
            children: [
              Container(
                color: Colors.transparent,
                width: 30 * SizeConfig.widthMultiplier,
                child: Row(
                  children: [
                    Text(
                      "\$25000.00",
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
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
