import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';
import '../../../widgets/auth_text_field.dart';
import '../../../widgets/my_button.dart';

class OutletInfoScreen extends StatelessWidget {
  const OutletInfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 3 * SizeConfig.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4 * SizeConfig.widthMultiplier,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Outlet Name",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: textcolor,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w700,
                            fontSize: 1.8 * SizeConfig.textMultiplier),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          // ignore: deprecated_member_use
                          FontAwesomeIcons.questionCircle,
                          size: 2 * SizeConfig.heightMultiplier,
                        ),
                      ),
                    ],
                  ),
                  AuthTextfeild(
                    obscuretext: false,
                    hinttext: "Enter Name",
                    // controller: outletname,
                    showicon: false,
                  ),
                  Text(
                    "Outlet Address",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: textcolor,
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w700,
                        fontSize: 1.8 * SizeConfig.textMultiplier),
                  ),
                  AuthTextfeild(
                    obscuretext: false,
                    hinttext: "Enter street address",
                    // controller: streetaddress,
                    showicon: false,
                  ),
                  AuthTextfeild(
                    obscuretext: false,
                    hinttext: "Unit No.",
                    // controller: unitnumber,
                    showicon: false,
                  ),
                  AuthTextfeild(
                    obscuretext: false,
                    hinttext: "Potal Code",
                    // controller: streetaddress,
                    showicon: false,
                  ),
                  SizedBox(
                    height: 18 * SizeConfig.heightMultiplier,
                  ),
                  MyButton(ontap: () {}, text: "Duplicate"),
                  SizedBox(
                    height: 3 * SizeConfig.heightMultiplier,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
