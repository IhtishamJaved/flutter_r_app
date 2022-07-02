import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:r_app/views/pages/sale_screen/monthy_sales/monthly_product_screen/monthly_product_screen.dart';
import 'package:r_app/views/pages/sale_screen/monthy_sales/monthly_services_screen/monthly_services_screen.dart';
import 'package:r_app/views/pages/sale_screen/monthy_sales/monthly_staff_screen/monthly_staff_screen.dart';
import 'package:r_app/views/pages/sale_screen/monthy_sales/montly_customer_screen/montly_customer_screen.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';


class MonthlySales extends StatefulWidget {
  const MonthlySales({Key key}) : super(key: key);

  @override
  State<MonthlySales> createState() => _MonthlySalesState();
}

int selectedindex = 0;

List<Widget> pages = [
  const MonthlyServiceScreen(),
  const MonthlyProductScreen(),
  const MonthlyCustomerScreen(),
  const MonthlyStaffScreen(),
];
List dropDownListData = [
  {"title": "Jun 2022", "value": "1"},
  {"title": "May 2022", "value": "2"},
];

String defaultValue = "";

String secondDropDown = "";

class _MonthlySalesState extends State<MonthlySales> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 4 * SizeConfig.heightMultiplier,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            categories(),
            SizedBox(
              width: 3 * SizeConfig.widthMultiplier,
            ),
            Container(
              height: 4.5 * SizeConfig.heightMultiplier,
              width: 27 * SizeConfig.widthMultiplier,
              padding: EdgeInsets.only(
                bottom: .3 * SizeConfig.heightMultiplier,
                left: 2 * SizeConfig.widthMultiplier,
                right: 2 * SizeConfig.widthMultiplier,
              ),
              decoration: BoxDecoration(
                //      color: Colors.red,
                border: Border.all(color: const Color(0xffE3E3E3)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                    //  isDense: true,
                    value: defaultValue,
                    isExpanded: true,
                    menuMaxHeight: 350,
                    icon: Icon(
                      CupertinoIcons.chevron_down,
                      color: textcolor,
                      size: 2 * SizeConfig.heightMultiplier,
                    ),
                    items: [
                      DropdownMenuItem(
                          child: Text(
                            "Mar 2022",
                            style: TextStyle(
                                color: textcolor,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w400,
                                fontSize: 1.8 * SizeConfig.textMultiplier),
                          ),
                          value: ""),
                      ...dropDownListData.map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                          child: Text(
                            data['title'],
                            style: TextStyle(
                                color: textcolor,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w400,
                                fontSize: 1.8 * SizeConfig.textMultiplier),
                          ),
                          value: data['value'],
                        );
                      }).toList(),
                    ],
                    onChanged: (value) {
                      //         print("selected Value $value");
                      setState(() {
                        defaultValue = value;
                      });
                    }),
              ),
            ),
          ],
        ),
        Expanded(child: pages[selectedindex])
      ],
    );
  }

  Widget categories() {
    return Row(
      children: [
        catogoriess("Service", 0),
        catogoriess("Product", 1),
        catogoriess("Customer", 2),
        catogoriess("Staff", 3),
      ],
    );
  }

  Widget catogoriess(String text, int index) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedindex = index;
            });
          },
          child: Column(
            children: [
              Container(
                height: 4.5 * SizeConfig.heightMultiplier,
                padding: EdgeInsets.symmetric(
                  horizontal: 1.5 * SizeConfig.widthMultiplier,
                  vertical: 0.6 * SizeConfig.heightMultiplier,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: index == selectedindex
                        ? primarycolor
                        : Colors.transparent,
                  ),
                  color: index == selectedindex
                      ? const Color(0xFFFFF9F9)
                      : Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Quicksand",
                      fontSize: 1.5 * SizeConfig.textMultiplier,
                      color: index == selectedindex ? primarycolor : textcolor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
