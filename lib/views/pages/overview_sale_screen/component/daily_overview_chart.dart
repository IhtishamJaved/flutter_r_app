import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../../../contant/sizeconfig.dart';
import '../../../../model/chart_bar_model.dart';

class DailyOverviewChart extends StatelessWidget {
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
            _createDailyDataChart(),
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
