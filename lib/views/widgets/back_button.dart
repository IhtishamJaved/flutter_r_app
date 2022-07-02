import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';

class ArrowBackButtons extends StatelessWidget {
  const ArrowBackButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: 2 * SizeConfig.heightMultiplier,
          bottom: 3 * SizeConfig.heightMultiplier,
        ),
        child: Icon(
          Icons.keyboard_backspace,
          size: 4 * SizeConfig.heightMultiplier,
          color: textcolor,
        ),
      ),
    );
  }
}
