import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:r_app/auth/types_business_screen/type_business_screen.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';
import '../../views/widgets/auth_design.dart';

class SelectOutlet extends StatelessWidget {
  const SelectOutlet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthDesign(
      chilld: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5 * SizeConfig.widthMultiplier,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5 * SizeConfig.heightMultiplier,
            ),
            Row(
              children: [
                Icon(
                  LineAwesomeIcons.user_circle,
                  size: 4 * SizeConfig.heightMultiplier,
                  color: textcolor,
                ),
                SizedBox(
                  width: 2 * SizeConfig.widthMultiplier,
                ),
                Text(
                  "Select Outlet",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Quicksand",
                    fontSize: 2.8 * SizeConfig.textMultiplier,
                    color: textcolor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4 * SizeConfig.heightMultiplier,
            ),
            container("Novena Square 2"),
            container("Orchard ION"),
            container("Bishan Junction 8 "),
            container("Northpoint"),
            container("City Square Mall"),
          ],
        ),
      ),
    );
  }

  container(String text) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const TyprOfBussinessScreen());
      },
      child: Container(
        height: 6.5 * SizeConfig.heightMultiplier,
        margin: EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier),
        padding: EdgeInsets.only(
          left: 4 * SizeConfig.widthMultiplier,
          right: 4 * SizeConfig.widthMultiplier,
          top: 0.3 * SizeConfig.heightMultiplier,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black12,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Quicksand",
                fontSize: 2 * SizeConfig.textMultiplier,
                color: textcolor,
              ),
            ),
            const Spacer(),
            const Icon(
              MdiIcons.arrowRightDropCircleOutline,
              color: primarycolor,
            ),
          ],
        ),
      ),
    );
  }
}
