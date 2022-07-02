import 'package:flutter/material.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';

class ViewProfileContainer extends StatelessWidget {
  final String titletext;
  final String subtext;
  final bool showtext;
  //final String thirdtext;

  const ViewProfileContainer({
    Key key,
    @required this.titletext,
    @required this.subtext,
    @required this.showtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titletext,
            style: TextStyle(
                color: textcolor,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w700,
                fontSize: 2.5 * SizeConfig.textMultiplier),
          ),
          SizedBox(
            height: .5 * SizeConfig.heightMultiplier,
          ),
          Text(
            subtext,
            style: TextStyle(
                color: textcolor,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w400,
                fontSize: 2 * SizeConfig.textMultiplier),
          ),
          showtext
              ? Text(
                  "Products                                                     7%",
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w400,
                      fontSize: 2 * SizeConfig.textMultiplier),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
