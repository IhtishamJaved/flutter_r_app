import 'package:flutter/material.dart';

import '../../../../../contant/colors.dart';
import '../../../../../contant/sizeconfig.dart';

class DailyOverviewTable extends StatelessWidget {
  final String datatext;

  final String servicetext;
  final String pricetext;
  final String stafftext;
  final Color containercolor;
  const DailyOverviewTable(
      {Key key,
      @required this.datatext,
      @required this.servicetext,
      @required this.pricetext,
      @required this.stafftext,
      @required this.containercolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.5 * SizeConfig.heightMultiplier,
      padding: EdgeInsets.only(
          top: 1 * SizeConfig.heightMultiplier,
          left: 1 * SizeConfig.widthMultiplier),
      decoration: BoxDecoration(
        color: containercolor,
        // border: Border(
        //   bottom: BorderSide(width: 1, color: Color(0xffE3E3E3)),
        // ),
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
                width: 19 * SizeConfig.widthMultiplier,
                child: Row(
                  children: [
                    Text(
                      datatext,
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
                width: 27 * SizeConfig.widthMultiplier,
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        servicetext,
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(
                            color: textcolor,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w500,
                            fontSize: 1.8 * SizeConfig.textMultiplier),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            width: 2 * SizeConfig.widthMultiplier,
          ),
          Column(
            children: [
              Container(
                color: Colors.transparent,
                width: 21 * SizeConfig.widthMultiplier,
                child: Row(
                  children: [
                    Text(
                      pricetext,
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
                width: 22 * SizeConfig.widthMultiplier,
                child: Row(
                  children: [
                    Text(
                      stafftext,
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
        ],
      ),
    );
  }
}
