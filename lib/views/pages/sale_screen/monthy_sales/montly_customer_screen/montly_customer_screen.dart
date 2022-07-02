import 'package:flutter/material.dart';

import '../../../../../contant/sizeconfig.dart';
import '../../component/sale_button.dart';
import '../../component/sale_container.dart';
import '../../component/sale_detail_container.dart';
import '../../component/sale_earning_container.dart';

class MonthlyCustomerScreen extends StatelessWidget {
  const MonthlyCustomerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SaleEarningConatiner(
              firsttext: "Customers",
              earningtext: "\$20,450",
              color: Color(0xffF8FFFA)),
          const SaleContainer(firsttext: "Customer Name", secondtext: "Visits"),
          const SaleDetailContainer(
            text: "Service 1",
            color: Colors.transparent,
          ),
          const SaleDetailContainer(
              text: "Service 2", color: Color(0xffF8F8F8)),
          const SaleDetailContainer(
              text: "Service 3", color: Colors.transparent),
          const SaleDetailContainer(
              text: "Service 4", color: Color(0xffF8F8F8)),
          const SaleDetailContainer(
              text: "Service 5", color: Colors.transparent),
          const SaleDetailContainer(
              text: "Service 6", color: Color(0xffF8F8F8)),
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
