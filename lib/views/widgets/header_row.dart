import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/views/pages/sale_screen/sale_screen.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';

class HeaderRow extends StatelessWidget {
  final String titletext;
  final bool show;
  const HeaderRow({Key key, @required this.titletext, @required this.show})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2 * SizeConfig.heightMultiplier),
      child: Row(
        children: [
          Container(
            //  margin: EdgeInsets.only(top: 4 * SizeConfig.heightMultiplier),
            color: Colors.transparent,
            width: 69 * SizeConfig.widthMultiplier,
            child: Text(
              titletext,
              style: TextStyle(
                  color: textcolor,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.w700,
                  fontSize: 3 * SizeConfig.textMultiplier),
            ),
          ),
          show
              ? GestureDetector(
                  onTap: () {
                    Get.to(() => const SaleScreen());
                  },
                  child: Text(
                    "View More",
                    style: TextStyle(
                        color: primarycolor,
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                        fontSize: 2 * SizeConfig.textMultiplier),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
