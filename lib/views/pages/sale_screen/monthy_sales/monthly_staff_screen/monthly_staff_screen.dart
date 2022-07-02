import 'package:flutter/material.dart';
import 'package:r_app/views/pages/sale_screen/component/sale_button.dart';
import 'package:r_app/views/pages/sale_screen/monthy_sales/monthly_staff_screen/component/monthly_staff_container.dart';

import '../../../../../contant/colors.dart';
import '../../../../../contant/sizeconfig.dart';
import '../../component/sale_earning_container.dart';

class MonthlyStaffScreen extends StatelessWidget {
  const MonthlyStaffScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SaleEarningConatiner(
              firsttext: "Staffs",
              earningtext: "\$18,360",
              color: Color(0xffFFFDEE)),
          Container(
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
                      padding: EdgeInsets.only(
                          top: .6 * SizeConfig.heightMultiplier),
                      color: Colors.transparent,
                      width: 23 * SizeConfig.widthMultiplier,
                      child: Row(
                        children: [
                          Text(
                            "Staff Name",
                            style: TextStyle(
                                color: textcolor,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w700,
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
                      padding: EdgeInsets.only(
                          top: .6 * SizeConfig.heightMultiplier),
                      color: Colors.transparent,
                      width: 12 * SizeConfig.widthMultiplier,
                      child: Row(
                        children: [
                          Text(
                            "ID",
                            style: TextStyle(
                                color: textcolor,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w700,
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
                      color: Colors.transparent,
                      width: 23 * SizeConfig.widthMultiplier,
                      child: Row(
                        children: [
                          Text(
                            "Attended",
                            style: TextStyle(
                                color: textcolor,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w700,
                                fontSize: 1.5 * SizeConfig.textMultiplier),
                          ),
                          SizedBox(
                            width: 0.3 * SizeConfig.widthMultiplier,
                          ),
                          Icon(
                            Icons.filter_list_rounded,
                            color: textcolor,
                            size: 2.5 * SizeConfig.textMultiplier,
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
                      width: 28 * SizeConfig.widthMultiplier,
                      child: Row(
                        children: [
                          Text(
                            "Total Sales",
                            style: TextStyle(
                                color: textcolor,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w700,
                                fontSize: 1.5 * SizeConfig.textMultiplier),
                          ),
                          SizedBox(
                            width: 0.3 * SizeConfig.widthMultiplier,
                          ),
                          Icon(
                            Icons.filter_list_rounded,
                            color: textcolor,
                            size: 2.5 * SizeConfig.textMultiplier,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const MonthlyStaffContainer(color: Colors.transparent),
          const MonthlyStaffContainer(
            color: Color(0xffF8F8F8),
          ),
          const MonthlyStaffContainer(color: Colors.transparent),
          const MonthlyStaffContainer(
            color: Color(0xffF8F8F8),
          ),
          const MonthlyStaffContainer(color: Colors.transparent),
          const MonthlyStaffContainer(
            color: Color(0xffF8F8F8),
          ),
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          ),
          const SaleButton(),
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          ),
        ],
      ),
    );
  }
}
