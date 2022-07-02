import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:r_app/views/pages/overview_sale_screen/daily_overview_chat/component/daily_overview_table.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';
import '../../../../model/chart_bar_model.dart';
import 'component/daily_overview_container.dart';

class DailyOverviewChart extends StatefulWidget {
  const DailyOverviewChart({Key key}) : super(key: key);

  static List<charts.Series<BarMmodel, String>> _createDailyDataChart() {
    final data = [
      BarMmodel("21 May", 20),
      BarMmodel("22 May", 23),
      BarMmodel("23 May", 29),
      BarMmodel("24 May", 30),
      BarMmodel("25 May", 29),
      BarMmodel("26 May", 23),
      BarMmodel("27 May", 20),
    ];
    return [
      charts.Series<BarMmodel, String>(
        data: data,
        id: 'sales',
        //  colorFn: (_, __) => charts.MaterialPalette.teal.shadeDefault,
        domainFn: (BarMmodel barModeel, _) => barModeel.year,
        measureFn: (BarMmodel barModeel, _) => barModeel.value,
        seriesColor: charts.ColorUtil.fromDartColor(
          const Color(0xffBABABA),
        ),
      ),
    ];
  }

  @override
  State<DailyOverviewChart> createState() => _DailyOverviewChartState();
}

class _DailyOverviewChartState extends State<DailyOverviewChart> {
  List dropDownListData = [
    {"title": "May 2022", "value": "1"},
    {"title": "Jun 2022", "value": "2"},
  ];

  String defaultValue = "";

  String secondDropDown = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.transparent,
            height: 30 * SizeConfig.heightMultiplier,
            child: charts.BarChart(
              DailyOverviewChart._createDailyDataChart(),
              animate: true,
              defaultRenderer: charts.BarRendererConfig(
                maxBarWidthPx: 15,
              ),
              // ignore: unnecessary_new
              // ignore: prefer_const_constructors
              domainAxis: charts.OrdinalAxisSpec(
                renderSpec: const charts.SmallTickRendererSpec(
                  minimumPaddingBetweenLabelsPx: 0,
                  // Tick and Label styling here.
                  labelStyle: charts.TextStyleSpec(
                      fontSize: 10,
                      fontWeight: '400',

                      // size in Pts.
                      color: charts.MaterialPalette.black),

                  // Change the line colors to match text color.
                  // lineStyle: charts.LineStyleSpec(
                  //   color: charts.ColorUtil.fromDartColor(color),
                  // ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 4 * SizeConfig.heightMultiplier),
            height: 12 * SizeConfig.heightMultiplier,
            decoration: BoxDecoration(
              color: const Color(0xffF8F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 4 * SizeConfig.widthMultiplier,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Past 7 Days Total Earnings",
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 2 * SizeConfig.textMultiplier),
                    ),
                    SizedBox(
                      height: 0.5 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "\$22,450",
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 2.5 * SizeConfig.textMultiplier),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 2.5 * SizeConfig.heightMultiplier,
                          left: 10 * SizeConfig.widthMultiplier),
                      height: 7 * SizeConfig.heightMultiplier,
                      width: 7 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                          color: primarycolor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        BootstrapIcons.file_earmark_arrow_down,
                        color: white,
                        size: 4 * SizeConfig.textMultiplier,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              const DailyOverviewContainer(
                iconData: BootstrapIcons.stars,
                titletext: "Top Service",
                subtext: "Hair Cut A",
                amount: "\$250",
                color: Color(0xffF8FAFF),
              ),
              SizedBox(
                width: 4 * SizeConfig.widthMultiplier,
              ),
              const DailyOverviewContainer(
                iconData: BootstrapIcons.stars,
                titletext: "Top Product",
                subtext: "Product Name",
                amount: "\$50.95",
                color: Color(0xffFFF8FE),
              ),
            ],
          ),
          Row(
            children: [
              const DailyOverviewContainer(
                iconData: LineariconsFree.diamond_1,
                titletext: "Top Customer",
                subtext: "Customer Name",
                amount: "ID 09876",
                color: Color(0xffF8FFFA),
              ),
              SizedBox(
                width: 4 * SizeConfig.widthMultiplier,
              ),
              const DailyOverviewContainer(
                iconData: TablerIcons.crown,
                titletext: "Top Staff",
                subtext: "Staff Name",
                amount: "ID 12345",
                color: Color(0xffFFFDEE),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: 2 * SizeConfig.heightMultiplier,
                top: 2 * SizeConfig.heightMultiplier),
            child: Row(
              children: [
                Container(
                  height: 4.5 * SizeConfig.heightMultiplier,
                  padding: EdgeInsets.only(
                    top: .5 * SizeConfig.heightMultiplier,
                  ),
                  //  margin: EdgeInsets.only(top: 4 * SizeConfig.heightMultiplier),
                  color: Colors.transparent,
                  width: 62 * SizeConfig.widthMultiplier,
                  child: Text(
                    "Breakdown Summary",
                    style: TextStyle(
                        color: textcolor,
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w700,
                        fontSize: 2.2 * SizeConfig.textMultiplier),
                  ),
                ),
                Container(
                  height: 4.5 * SizeConfig.heightMultiplier,
                  width: 30 * SizeConfig.widthMultiplier,
                  padding: EdgeInsets.only(
                    bottom: .3 * SizeConfig.heightMultiplier,
                    left: 2 * SizeConfig.widthMultiplier,
                    right: 2 * SizeConfig.widthMultiplier,
                  ),
                  decoration: BoxDecoration(
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
                          ...dropDownListData
                              .map<DropdownMenuItem<String>>((data) {
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
          ),
          // SizedBox(
          //   height: 2 * SizeConfig.heightMultiplier,
          // ),
          Container(
            height: 4.5 * SizeConfig.heightMultiplier,
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
                      width: 20 * SizeConfig.widthMultiplier,
                      child: Row(
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(
                                color: textcolor,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w700,
                                fontSize: 2 * SizeConfig.textMultiplier),
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
                      width: 27 * SizeConfig.widthMultiplier,
                      child: Row(
                        children: [
                          Text(
                            "Services",
                            style: TextStyle(
                                color: textcolor,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w700,
                                fontSize: 2 * SizeConfig.textMultiplier),
                          ),
                          SizedBox(
                            width: 0.3 * SizeConfig.widthMultiplier,
                          ),
                          Icon(MdiIcons.filterOutline,
                              color: textcolor,
                              size: 3 * SizeConfig.textMultiplier),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 2 * SizeConfig.widthMultiplier,
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: 21 * SizeConfig.widthMultiplier,
                      child: Row(
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(
                                color: textcolor,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w700,
                                fontSize: 2 * SizeConfig.textMultiplier),
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
                      width: 22 * SizeConfig.widthMultiplier,
                      child: Row(
                        children: [
                          Text(
                            "Staff",
                            style: TextStyle(
                                color: textcolor,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w700,
                                fontSize: 2 * SizeConfig.textMultiplier),
                          ),
                          SizedBox(
                            width: 0.3 * SizeConfig.widthMultiplier,
                          ),
                          Icon(MdiIcons.filterOutline,
                              color: textcolor,
                              size: 3 * SizeConfig.textMultiplier),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          ),
          const DailyOverviewTable(
            datatext: "1 Mar",
            servicetext: "Package B",
            pricetext: "\$250.00",
            stafftext: "Jason Yeo",
            containercolor: Colors.white,
          ),
          const DailyOverviewTable(
            datatext: "1 Mar",
            servicetext: "Package B",
            pricetext: "\$250.00",
            stafftext: "Jason Yeo",
            containercolor: Color(0xffF8F8F8),
          ),
          const DailyOverviewTable(
            datatext: "1 Mar",
            servicetext: "Package B",
            pricetext: "\$250.00",
            stafftext: "Jason Yeo",
            containercolor: Colors.white,
          ),
          const DailyOverviewTable(
            datatext: "1 Mar",
            servicetext: "Package B",
            pricetext: "\$250.00",
            stafftext: "Jason Yeo",
            containercolor: Color(0xffF8F8F8),
          ),
          const DailyOverviewTable(
            datatext: "1 Mar",
            servicetext: "Package B",
            pricetext: "\$250.00",
            stafftext: "Jason Yeo",
            containercolor: Colors.white,
          ),
          const DailyOverviewTable(
            datatext: "1 Mar",
            servicetext: "Hair Rebonding",
            pricetext: "\$250.00",
            stafftext: "Jason Yeo",
            containercolor: Color(0xffF8F8F8),
          ),
          SizedBox(
            height: 30 * SizeConfig.heightMultiplier,
          )
        ],
      ),
    );
  }
}
