import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';

class SaleEarningConatiner extends StatelessWidget {
  final String firsttext;
  final String earningtext;
  final Color color;
  const SaleEarningConatiner(
      {Key key,
      @required this.firsttext,
      @required this.earningtext,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 4 * SizeConfig.heightMultiplier),
      height: 12 * SizeConfig.heightMultiplier,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 4 * SizeConfig.widthMultiplier,
          ),
          Column(
            children: [
              Container(
                  margin: EdgeInsets.only(
                    top: 2.5 * SizeConfig.heightMultiplier,
                    // left: 10 * SizeConfig.widthMultiplier,
                  ),
                  height: 7 * SizeConfig.heightMultiplier,
                  width: 7 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      //  color: primarycolor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Iconify(
                    Ph.wallet,
                    color: textcolor,
                    size: 1 * SizeConfig.textMultiplier,
                  )
                  // Icon(
                  //   BootstrapIcons.file_earmark_arrow_down,
                  //   color: white,
                  //   size: 4 * SizeConfig.textMultiplier,
                  // ),
                  )
            ],
          ),
          SizedBox(
            width: 4 * SizeConfig.widthMultiplier,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              Text(
                "Total Earnings from $firsttext",
                style: TextStyle(
                    color: textcolor,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w700,
                    fontSize: 1.6 * SizeConfig.textMultiplier),
              ),
              SizedBox(
                height: 0.5 * SizeConfig.heightMultiplier,
              ),
              Text(
                earningtext,
                style: TextStyle(
                    color: textcolor,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w700,
                    fontSize: 2.5 * SizeConfig.textMultiplier),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
