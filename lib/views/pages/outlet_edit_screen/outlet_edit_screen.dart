import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import '../../../model/customer_model.dart';
import '../tabbar/tabbar.dart';

class OutletEditScreen extends StatelessWidget {
  const OutletEditScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 4 * SizeConfig.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2 * SizeConfig.widthMultiplier),
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.keyboard_backspace),
              ),
            ),
            SizedBox(
              height: 3 * SizeConfig.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 5 * SizeConfig.widthMultiplier),
              child: Column(
                children: [
                  Text(
                    customermodel[1].outletname,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Quicksand",
                      fontSize: 2.8 * SizeConfig.textMultiplier,
                      color: textcolor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.5 * SizeConfig.heightMultiplier,
            ),
            Expanded(
              child: SizedBox(
                height: 0.1 * SizeConfig.heightMultiplier,
                width: double.infinity,
                child: const Categories(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
