import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';

class SaleButton extends StatelessWidget {
  const SaleButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(
          top: 1 * SizeConfig.heightMultiplier,
        ),
        height: 6.5 * SizeConfig.heightMultiplier,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: primarycolor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              BootstrapIcons.file_earmark_arrow_down,
              color: white,
              size: 2.5 * SizeConfig.textMultiplier,
            ),
            SizedBox(
              width: 1 * SizeConfig.widthMultiplier,
            ),
            Text(
              "Export",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Quicksand",
                fontSize: 2 * SizeConfig.textMultiplier,
                color: white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
