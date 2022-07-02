import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/views/pages/package_bought_screen/package_bought_screen.dart';

import 'package:r_app/views/pages/sale_screen/component/sale_button.dart';
import 'package:r_app/views/pages/sale_screen/component/sale_container.dart';
import 'package:r_app/views/pages/sale_screen/component/sale_detail_container.dart';
import 'package:r_app/views/pages/sale_screen/component/sale_earning_container.dart';

import '../../../../../contant/sizeconfig.dart';

class MonthlyServiceScreen extends StatelessWidget {
  const MonthlyServiceScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SaleEarningConatiner(
              firsttext: "Services",
              earningtext: "\$20,450",
              color: Color(0xffF8FAFF)),
          const SaleContainer(firsttext: "Services", secondtext: "Qty"),
          GestureDetector(
            onTap: () {
              Get.to(() => const PackageBoughtScreen());
            },
            child: const SaleDetailContainer(
              text: "Service 1",
              color: Colors.transparent,
            ),
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
