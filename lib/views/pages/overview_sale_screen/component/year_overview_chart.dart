import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../../../contant/sizeconfig.dart';
import '../../../../model/chart_bar_model.dart';

class YearOverviewChart extends StatelessWidget {
  const YearOverviewChart({Key key}) : super(key: key);

  static List<charts.Series<BarMmodel, String>> _createYearDataChart() {
    final data = [
      BarMmodel("2016", 20),
      BarMmodel("2017", 23),
      BarMmodel("2018", 29),
      BarMmodel("2019", 30),
      BarMmodel("2020", 29),
      BarMmodel("2021", 23),
      BarMmodel("2022", 20),
    ];
    return [
      charts.Series<BarMmodel, String>(
        data: data,
        id: 'sales',
        colorFn: (_, __) => charts.MaterialPalette.teal.shadeDefault,
        domainFn: (BarMmodel barModeel, _) => barModeel.year,
        measureFn: (BarMmodel barModeel, _) => barModeel.value,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30 * SizeConfig.heightMultiplier,
          child: charts.BarChart(
            _createYearDataChart(),
            animate: true,
          ),
        ),
        Container(
          height: 20 * SizeConfig.heightMultiplier,
        ),
      ],
    );
  }
}
