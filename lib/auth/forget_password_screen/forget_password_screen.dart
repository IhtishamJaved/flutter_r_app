import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';
import '../../views/widgets/auth_design.dart';
import '../../views/widgets/auth_text_field.dart';
import '../../views/widgets/my_button.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
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
                  "Forgot Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Quicksand",
                    fontSize: 2.6 * SizeConfig.textMultiplier,
                    color: textcolor,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 3 * SizeConfig.heightMultiplier,
                bottom: 3 * SizeConfig.heightMultiplier,
                left: 23 * SizeConfig.widthMultiplier,
              ),
              height: 20 * SizeConfig.heightMultiplier,
              width: 20 * SizeConfig.heightMultiplier,
              color: primarycolor,
            ),
            Text(
              "Email Address",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Quicksand",
                fontSize: 2 * SizeConfig.textMultiplier,
                color: textcolor,
              ),
            ),
            AuthTextfeild(
              hinttext: "Enter email address",
              obscuretext: false,
              controller: emailcontroller,
              showicon: false,
            ),
            MyButton(
              ontap: () {},
              text: "Request Reset Link",
            ),
            SizedBox(
              height: 4 * SizeConfig.heightMultiplier,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    "Back To Log In",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Quicksand",
                      fontSize: 2 * SizeConfig.textMultiplier,
                      color: primarycolor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
