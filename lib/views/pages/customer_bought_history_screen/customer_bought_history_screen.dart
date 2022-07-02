import 'package:flutter/material.dart';
import 'package:r_app/contant/colors.dart';
import 'package:r_app/contant/sizeconfig.dart';
import 'package:r_app/views/widgets/back_button.dart';
import 'package:r_app/views/widgets/header_row.dart';

import '../package_bought_screen/component/package_bought_container.dart';
import '../sale_screen/component/sale_button.dart';

class CustomerBoughtHistoryScreen extends StatelessWidget {
  const CustomerBoughtHistoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 4 * SizeConfig.widthMultiplier),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ArrowBackButtons(),
              const HeaderRow(titletext: "Customer A", show: false),
              Row(
                children: [
                  Container(
                    height: 5 * SizeConfig.heightMultiplier,
                    width: 22 * SizeConfig.widthMultiplier,
                    decoration: BoxDecoration(
                        color: const Color(0xffEDF2FF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "ID 12345",
                        style: TextStyle(
                            color: textcolor,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w500,
                            fontSize: 2 * SizeConfig.textMultiplier),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 2 * SizeConfig.widthMultiplier),
                    height: 5 * SizeConfig.heightMultiplier,
                    width: 40 * SizeConfig.widthMultiplier,
                    decoration: BoxDecoration(
                        color: const Color(0xffEDF2FF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Platinum Member",
                        style: TextStyle(
                            color: textcolor,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w500,
                            fontSize: 2 * SizeConfig.textMultiplier),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 4 * SizeConfig.heightMultiplier,
              ),
              Text(
                "As of Mar 2022",
                style: TextStyle(
                    color: textcolor,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w400,
                    fontSize: 1.8 * SizeConfig.textMultiplier),
              ),
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
                          width: 30 * SizeConfig.widthMultiplier,
                          child: Row(
                            children: [
                              Text(
                                "Bought by",
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
                          width: 22 * SizeConfig.widthMultiplier,
                          child: Row(
                            children: [
                              Text(
                                "Qty",
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
              const PackageBoughtContainer(color: Colors.transparent),
              const PackageBoughtContainer(color: Color(0xffF8F8F8)),
              const PackageBoughtContainer(color: Colors.transparent),
              const PackageBoughtContainer(color: Color(0xffF8F8F8)),
              const PackageBoughtContainer(color: Colors.transparent),
              const PackageBoughtContainer(color: Color(0xffF8F8F8)),
              const PackageBoughtContainer(color: Colors.transparent),
              const PackageBoughtContainer(color: Color(0xffF8F8F8)),
              SizedBox(
                height: 12 * SizeConfig.heightMultiplier,
              ),
              const SaleButton(),
            ],
          ),
        ),
      ),
    );
  }
}
