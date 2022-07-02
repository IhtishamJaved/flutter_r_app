import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/views/pages/customer_bought_history_screen/customer_bought_history_screen.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';

class PackageBoughtContainer extends StatelessWidget {
  final Color color;
  const PackageBoughtContainer({Key key, @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const CustomerBoughtHistoryScreen());
      },
      child: Container(
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
                  padding:
                      EdgeInsets.only(top: .2 * SizeConfig.heightMultiplier),
                  color: Colors.transparent,
                  width: 30 * SizeConfig.widthMultiplier,
                  child: Row(
                    children: [
                      Text(
                        "Customer A",
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
                  padding:
                      EdgeInsets.only(top: .2 * SizeConfig.heightMultiplier),
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
                  padding:
                      EdgeInsets.only(top: .2 * SizeConfig.heightMultiplier),
                  color: Colors.transparent,
                  width: 22 * SizeConfig.widthMultiplier,
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
                  padding:
                      EdgeInsets.only(top: .2 * SizeConfig.heightMultiplier),
                  color: Colors.transparent,
                  width: 28 * SizeConfig.widthMultiplier,
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
          ],
        ),
      ),
    );
  }
}
