// ignore_for_file: missing_required_param

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import '../../widgets/auth_text_field.dart';
import '../../widgets/my_button.dart';
import '../edit_appointment_screen/component/edit_appointment_text_field.dart';

class CustomerEditProfileScreen extends StatefulWidget {
  const CustomerEditProfileScreen({Key key}) : super(key: key);

  @override
  State<CustomerEditProfileScreen> createState() =>
      _CustomerEditProfileScreenState();
}

class _CustomerEditProfileScreenState extends State<CustomerEditProfileScreen> {
  String val;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final TextEditingController namecontroller = TextEditingController();
    final TextEditingController emailaddress = TextEditingController();
    final TextEditingController commentcontroller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 4 * SizeConfig.heightMultiplier,
              ),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.keyboard_backspace),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4 * SizeConfig.widthMultiplier,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 2.8 * SizeConfig.textMultiplier),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Full Name",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                    AuthTextfeild(
                      obscuretext: false,
                      hinttext: "Enter Name",
                      controller: namecontroller,
                      showicon: false,
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Email Address",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                    AuthTextfeild(
                      obscuretext: false,
                      hinttext: "Enter Email Address",
                      controller: emailaddress,
                      showicon: false,
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Contact No.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                    Container(
                      height: 6.5 * SizeConfig.heightMultiplier,
                      margin: EdgeInsets.symmetric(
                        vertical: 1.5 * SizeConfig.heightMultiplier,
                      ),
                      padding: EdgeInsets.only(
                        left: 4 * SizeConfig.widthMultiplier,
                        //        top: 2.4 * SizeConfig.heightMultiplier,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
                      child: IntlPhoneField(
                        //       textAlign: TextAlign.center,
                        showCountryFlag: false,
                        disableLengthCheck: true,
                        dropdownIconPosition: IconPosition.trailing,
                        dropdownTextStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Quicksand",
                          fontSize: 2 * SizeConfig.textMultiplier,
                          color: Colors.black26,
                        ),
                        dropdownIcon: Icon(
                          CupertinoIcons.chevron_down,
                          size: 2 * SizeConfig.heightMultiplier,
                          color: Colors.black26,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 1.8 * SizeConfig.heightMultiplier),
                          hintText: "Enter No.",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: "Quicksand",
                            fontSize: 2 * SizeConfig.textMultiplier,
                            color: Colors.black26,
                          ),
                        ),
                        // controller: phonecontroller.phonenumber,
                        initialCountryCode: 'PK',

                        onChanged: (phoneNumber) {
                          // phonecontroller.phone.value =
                          //     phoneNumber.completeNumber;

                          // print(phonecontroller.phone.value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Comment (Only you can see this)",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                    EditAppointmentTextField(
                      maxline: null,
                      keyboardtype: TextInputType.multiline,
                      controller: null,
                      height: 13 * SizeConfig.heightMultiplier,
                      //    text: "Hostel Details",
                      color: Colors.black12,
                      hinttext: "Enter Comment here",
                      validations: (value) {
                        if (value.isEmpty) {
                          return "Please Enter Hostel Detail";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
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
                    "Join membership programme",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Quicksand",
                      fontSize: 2 * SizeConfig.textMultiplier,
                      color: textcolor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 5 * SizeConfig.widthMultiplier),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Membership Tier",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                    Container(
                      height: 6.5 * SizeConfig.heightMultiplier,
                      margin: EdgeInsets.symmetric(
                        vertical: 1 * SizeConfig.heightMultiplier,
                      ),
                      padding: EdgeInsets.only(
                        left: 4 * SizeConfig.widthMultiplier,
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
                            val ?? "Select Membership Tier",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: "Quicksand",
                              fontSize: 2 * SizeConfig.textMultiplier,
                              color: textcolor,
                            ),
                          ),
                          const Spacer(),
                          PopupMenuButton(
                            icon: const Icon(
                              EvaIcons.arrowIosDownward,
                              color: textcolor,
                            ),
                            itemBuilder: (context) => [
                              PopupMenuItem<String>(
                                child: Text(
                                  "Platinum",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                value: "Platinum",
                              ),
                              PopupMenuItem<String>(
                                child: Text(
                                  "Gold",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                value: "Gold",
                              ),
                              PopupMenuItem<String>(
                                child: Text(
                                  "Diamond",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                value: "Diamond",
                              ),
                            ],
                            onSelected: (value) {
                              setState(() {
                                val = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                    MyButton(
                      ontap: () {
                        bottomsheet(context);
                      },
                      text: "Save Changes",
                    ),
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void bottomsheet(
    context,
  ) {
    // bool value1 = false;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      builder: (context) => Container(
        height: 80 * SizeConfig.heightMultiplier,
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10 * SizeConfig.heightMultiplier,
            ),
            Container(
              height: 28 * SizeConfig.heightMultiplier,
              width: 55 * SizeConfig.widthMultiplier,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage("assests/images/Thinking_Flatline 1 (1).png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Changes will not be saved",
              style: TextStyle(
                  color: textcolor,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.w700,
                  fontSize: 2.8 * SizeConfig.textMultiplier),
            ),
            Text(
              "Are you sure you would like to\n exit without saving  ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: textcolor,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.w400,
                  fontSize: 1.8 * SizeConfig.textMultiplier),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 4 * SizeConfig.widthMultiplier,
                  vertical: 2 * SizeConfig.heightMultiplier),
              child: MyButton(
                  ontap: () {
                    Get.back();
                  },
                  text: "Go Back"),
            ),
            GestureDetector(
              onTap: () {
                bottomsheetupdate(context);
              },
              child: Container(
                color: Colors.transparent,
                height: 4 * SizeConfig.heightMultiplier,
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: primarycolor,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w700,
                    fontSize: 2 * SizeConfig.textMultiplier,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void bottomsheetupdate(
    context,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      builder: (context) => Container(
        height: 80 * SizeConfig.heightMultiplier,
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10 * SizeConfig.heightMultiplier,
            ),
            Container(
              height: 28 * SizeConfig.heightMultiplier,
              width: 55 * SizeConfig.widthMultiplier,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage("assests/images/Team success _Flatline 1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Successfully updated",
              style: TextStyle(
                  color: textcolor,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.w700,
                  fontSize: 2.8 * SizeConfig.textMultiplier),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 4 * SizeConfig.widthMultiplier,
                  vertical: 2 * SizeConfig.heightMultiplier),
              child: MyButton(
                  ontap: () {
                    bottomsheeterror(context);
                  },
                  text: "Back to Home"),
            ),
          ],
        ),
      ),
    );
  }

  void bottomsheeterror(
    context,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      builder: (context) => Container(
        height: 80 * SizeConfig.heightMultiplier,
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10 * SizeConfig.heightMultiplier,
            ),
            Container(
              height: 28 * SizeConfig.heightMultiplier,
              width: 55 * SizeConfig.widthMultiplier,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assests/images/Explosion_Flatline 1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Oops! Failed to update",
              style: TextStyle(
                  color: textcolor,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.w700,
                  fontSize: 2.8 * SizeConfig.textMultiplier),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 4 * SizeConfig.widthMultiplier,
                  vertical: 2 * SizeConfig.heightMultiplier),
              child: MyButton(
                  ontap: () {
                    Get.back();
                  },
                  text: "Try Again"),
            ),
          ],
        ),
      ),
    );
  }
}
