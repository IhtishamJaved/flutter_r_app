import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';

import '../../views/widgets/auth_design.dart';
import '../../views/widgets/auth_text_field.dart';
import '../../views/widgets/my_button.dart';
import '../company_registration_screen/company_registration_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController companynamecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();

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
                  LineAwesomeIcons.pen,
                  size: 4 * SizeConfig.heightMultiplier,
                  color: textcolor,
                ),
                SizedBox(
                  width: 2 * SizeConfig.widthMultiplier,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Quicksand",
                    fontSize: 3 * SizeConfig.textMultiplier,
                    color: textcolor,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    "Log In",
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
              "Company Name",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Quicksand",
                fontSize: 2 * SizeConfig.textMultiplier,
                color: textcolor,
              ),
            ),
            AuthTextfeild(
              hinttext: "Enter name",
              obscuretext: false,
              controller: companynamecontroller,
              showicon: false,
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
              hinttext: "Enter name",
              obscuretext: false,
              controller: emailcontroller,
              showicon: false,
            ),
            Text(
              "Password",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Quicksand",
                fontSize: 2 * SizeConfig.textMultiplier,
                color: textcolor,
              ),
            ),
            AuthTextfeild(
              hinttext: "Enter name",
              obscuretext: true,
              controller: passcontroller,
              showicon: true,
            ),
            MyButton(
              ontap: () {
                //   Get.to(() => BottomNavigationTabBar());
                Get.to(() => const CompanyRegistrationScreen());
              },
              text: "Sign Up",
            ),
            SizedBox(
              height: 2.5 * SizeConfig.heightMultiplier,
            ),
          ],
        ),
      ),
    );
  }
}
