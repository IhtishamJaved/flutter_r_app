import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:r_app/auth/select_out_let/select_out_let.dart';
import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';
import '../../views/widgets/auth_design.dart';
import '../../views/widgets/auth_text_field.dart';
import '../../views/widgets/my_button.dart';
import '../forget_password_screen/forget_password_screen.dart';
import '../sign_up_screen/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passcontroller = TextEditingController();
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
                  "Login",
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
                    Get.to(() => const SignupScreen());
                  },
                  child: Text(
                    "Sign Up",
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
            Row(
              children: [
                Text(
                  "Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Quicksand",
                    fontSize: 2 * SizeConfig.textMultiplier,
                    color: textcolor,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ForgotPasswordScreen());
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Quicksand",
                      fontSize: 1.5 * SizeConfig.textMultiplier,
                      color: primarycolor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            AuthTextfeild(
              hinttext: "Enter password",
              obscuretext: true,
              controller: passcontroller,
              showicon: true,
            ),
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: white,
                  activeColor: primarycolor,
                  value: value,
                  onChanged: (bool value) {
                    setState(() {
                      this.value = value;
                    });
                  },
                ),
                Text(
                  "Remember me",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Quicksand",
                    fontSize: 2 * SizeConfig.textMultiplier,
                    color: textcolor,
                  ),
                )
              ],
            ),
            MyButton(
              ontap: () {
                Get.to(() => const SelectOutlet());
              },
              text: "Log In",
            ),
            // SizedBox(
            //   height: 4 * SizeConfig.heightMultiplier,
            // ),
          ],
        ),
      ),
    );
  }
}
