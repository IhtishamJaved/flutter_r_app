import 'package:flutter/material.dart';

import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import '../outlet_edit_screen/outlet_info_screen/outlet_info_screen.dart';
import '../outlet_edit_screen/outlet_product_screen/outlet_product_screen.dart';
import '../outlet_edit_screen/outlet_services_screen/outlet_service_screen.dart';
import '../outlet_edit_screen/outlet_staff_screen/outlet_staff_screen.dart';


class Categories extends StatefulWidget {
  const Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedindex = 0;
  List<Widget> pages = [
    const OutletInfoScreen(),
    const OutletServiceScreen(),
    const OutletProductScreen(),
    const OutletStaffScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [categories(), Expanded(child: pages[selectedindex])],
    );
  }

  Widget categories() {
    return Row(
      children: [
        SizedBox(
          width: 4 * SizeConfig.widthMultiplier,
        ),
        catogoriess("Info", 0),
        catogoriess("Services", 1),
        catogoriess("Products", 2),
        catogoriess("Staffs", 3),
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
                padding: EdgeInsets.symmetric(
                  horizontal: 2.5 * SizeConfig.widthMultiplier,
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
