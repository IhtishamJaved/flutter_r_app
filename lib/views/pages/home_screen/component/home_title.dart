import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';
import '../../appointment_details_screen/appointment_details_screen.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return GestureDetector(
      onTap: () {
        Get.to(() => const AppointmentDetailsScreen());
      },
      child: Container(
        height: 10 * SizeConfig.heightMultiplier,
        color: Colors.transparent,
        child: Row(
          children: [
            SizedBox(
              width: 4 * SizeConfig.widthMultiplier,
            ),
            Column(
              children: [
                SizedBox(
                  height: 3.2 * SizeConfig.heightMultiplier,
                ),
                Text(
                  "10:30 AM",
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w500,
                      fontSize: 2 * SizeConfig.textMultiplier),
                ),
              ],
            ),
            SizedBox(
              width: 4 * SizeConfig.widthMultiplier,
            ),
            Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: 0.8 * SizeConfig.heightMultiplier),
                  height: 8 * SizeConfig.heightMultiplier,
                  width: 70 * SizeConfig.widthMultiplier,
                  decoration: BoxDecoration(
                      color: const Color(0xfff9f9f9),
                      borderRadius: BorderRadius.circular(10),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        // ignore: prefer_const_constructors
                        BoxShadow(
                            color: Colors.white,
                            offset: const Offset(2, 2),
                            blurRadius: 1,
                            spreadRadius: 2)
                      ]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4 * SizeConfig.widthMultiplier,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 1.3 * SizeConfig.heightMultiplier,
                          ),
                          Text(
                            "Paulee Tan",
                            style: TextStyle(
                                color: const Color.fromRGBO(91, 105, 116, 1),
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w700,
                                fontSize: 2 * SizeConfig.textMultiplier),
                          ),
                          Text(
                            "Assigned to Jason Yeo",
                            style: TextStyle(
                                color: const Color.fromRGBO(91, 105, 116, 1),
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w500,
                                fontSize: 2 * SizeConfig.textMultiplier),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 7 * SizeConfig.widthMultiplier,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 2.3 * SizeConfig.heightMultiplier,
                          ),
                          // ignore: prefer_const_constructors
                          Icon(
                            CupertinoIcons.chevron_right_circle,
                            color: primarycolor,
                            size: 3.5 * SizeConfig.textMultiplier,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
