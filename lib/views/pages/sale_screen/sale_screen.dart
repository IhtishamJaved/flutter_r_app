import 'package:flutter/material.dart';
import 'package:r_app/views/widgets/back_button.dart';
import 'package:r_app/views/widgets/header_row.dart';

import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import 'monthy_sales/monthy_sales.dart';

class SaleScreen extends StatefulWidget {
  const SaleScreen({Key key}) : super(key: key);

  @override
  State<SaleScreen> createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen> {
  int selectedindex2 = 0;

  List<Widget> pages2 = [
    const MonthlySales(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: white,
          body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 4 * SizeConfig.widthMultiplier),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ArrowBackButtons(),
                SizedBox(height: 2 * SizeConfig.heightMultiplier),
                const HeaderRow(titletext: "Sale", show: false),
                headertabbar(),
                Expanded(child: pages2[selectedindex2]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget headertabbar() {
    return Container(
      // height: 4.7 * SizeConfig.heightMultiplier,
      width: 90.56 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
        color: const Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: const Color(0xffE3E3E3),
        ),
      ),
      child: Row(
        children: [
          headertabbarStyle("Monthly", 0),
          headertabbarStyle("Yearly", 1),
        ],
      ),
    );
  }

  Widget headertabbarStyle(String text, int index) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedindex2 = index;
            });
          },
          child: Column(
            children: [
              Container(
                height: 4.5 * SizeConfig.heightMultiplier,
                width: 45 * SizeConfig.widthMultiplier,
                padding: EdgeInsets.symmetric(
                  horizontal: 1.5 * SizeConfig.widthMultiplier,
                  vertical: 0.6 * SizeConfig.heightMultiplier,
                ),
                decoration: BoxDecoration(
                  borderRadius: index == selectedindex2
                      ? BorderRadius.circular(10)
                      : BorderRadius.circular(10),
                  border: Border.all(
                    width: 3,
                    color: index == selectedindex2
                        ? const Color(0xffEDF2FF)
                        : Colors.transparent,
                  ),
                  color: index == selectedindex2
                      ? const Color(0xfff8faff)
                      : const Color(0xffF8F8F8),
                ),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontWeight: index == selectedindex2
                          ? FontWeight.w700
                          : FontWeight.w500,
                      fontFamily: "Quicksand",
                      fontSize: 1.5 * SizeConfig.textMultiplier,
                      color: index == selectedindex2
                          ? textcolor
                          : const Color(0xffC4C4C4),
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
