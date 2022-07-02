
import 'package:flutter/material.dart';


import '../../../../../contant/colors.dart';
import '../../../../../contant/sizeconfig.dart';

class DailyOverviewContainer extends StatelessWidget {
  final String titletext;
  final String subtext;
  final String amount;
  final Color color;
  final IconData iconData;
  const DailyOverviewContainer(
      {Key key,
      @required this.titletext,
      @required this.subtext,
      @required this.amount,
      @required this.color,
      @required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 2 * SizeConfig.heightMultiplier,
      ),
      height: 10 * SizeConfig.heightMultiplier,
      width: 44 * SizeConfig.widthMultiplier,
      padding: EdgeInsets.only(
          left: 4 * SizeConfig.widthMultiplier,
          top: 1 * SizeConfig.heightMultiplier),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                iconData,
                size: 2 * SizeConfig.textMultiplier,
                color: textcolor,
              ),
              SizedBox(
                width: 1 * SizeConfig.widthMultiplier,
              ),
              Text(
                titletext,
                style: TextStyle(
                    color: textcolor,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w700,
                    fontSize: 1.8 * SizeConfig.textMultiplier),
              ),
            ],
          ),
          SizedBox(
            height: 0.5 * SizeConfig.heightMultiplier,
          ),
          Text(
            subtext,
            style: TextStyle(
                color: textcolor,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w600,
                fontSize: 1.8 * SizeConfig.textMultiplier),
          ),
          SizedBox(
            height: 0.5 * SizeConfig.heightMultiplier,
          ),
          Text(
            amount,
            style: TextStyle(
                color: textcolor,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w400,
                fontSize: 1.8 * SizeConfig.textMultiplier),
          ),
        ],
      ),
    );
  }
}
