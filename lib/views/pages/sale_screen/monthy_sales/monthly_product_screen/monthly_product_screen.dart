import 'package:flutter/material.dart';

import '../../../../../contant/sizeconfig.dart';
import '../../component/sale_button.dart';
import '../../component/sale_container.dart';
import '../../component/sale_detail_container.dart';
import '../../component/sale_earning_container.dart';

class MonthlyProductScreen extends StatelessWidget {
  const MonthlyProductScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SaleEarningConatiner(
              firsttext: "Products",
              earningtext: "\$5,380",
              color: Color(0xffFFF8FE)),
          const SaleContainer(firsttext: "Product", secondtext: "Qty"),
          const SaleDetailContainer(
            text: "Product A",
            color: Colors.transparent,
          ),
          const SaleDetailContainer(
              text: "Product B", color: Color(0xffF8F8F8)),
          const SaleDetailContainer(
              text: "Product C", color: Colors.transparent),
          const SaleDetailContainer(
              text: "Product D", color: Color(0xffF8F8F8)),
          const SaleDetailContainer(
              text: "Product E", color: Colors.transparent),
          const SaleDetailContainer(
              text: "Product F", color: Color(0xffF8F8F8)),
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          ),
          const SaleButton(),
          SizedBox(
            height: 4 * SizeConfig.heightMultiplier,
          ),
        ],
      ),
    );
  }
}
