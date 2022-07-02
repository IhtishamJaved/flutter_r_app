import 'package:flutter/material.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';

class SaleContainer extends StatelessWidget {
  final String firsttext;
  final String secondtext;

  const SaleContainer({
    Key key,
    @required this.firsttext,
    @required this.secondtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 3 * SizeConfig.heightMultiplier,
      ),
      height: 4 * SizeConfig.heightMultiplier,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        border: Border(
          bottom: BorderSide(width: 1, color: Color(0xffE3E3E3)),
        ),
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
                      firsttext,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
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
                      secondtext,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                    SizedBox(
                      width: 0.3 * SizeConfig.widthMultiplier,
                    ),
                    Icon(
                      Icons.filter_list_rounded,
                      color: textcolor,
                      size: 3 * SizeConfig.textMultiplier,
                    )
                  ],
                ),
              )
            ],
          ),

          Column(
            children: [
              Container(
                color: Colors.transparent,
                width: 33 * SizeConfig.widthMultiplier,
                child: Row(
                  children: [
                    Text(
                      "Total Sales",
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                    SizedBox(
                      width: 0.3 * SizeConfig.widthMultiplier,
                    ),
                    Icon(
                      Icons.filter_list_rounded,
                      color: textcolor,
                      size: 3 * SizeConfig.textMultiplier,
                    )
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
