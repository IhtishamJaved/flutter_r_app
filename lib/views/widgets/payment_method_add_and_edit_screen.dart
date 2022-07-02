import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';
import 'auth_text_field.dart';
import 'my_button.dart';


void paymentmethodaddandedit(
  context,
  String text,
  String val,
  String bank,
  String accounttype,
  TextEditingController accountholdernamecontroller,
  TextEditingController accountnumbercontroller,
  String buttontext,
  VoidCallback ontap,
  bool showbutton,
  VoidCallback ontap2,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(35.0),
    ),
    builder: (context) =>
        StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
      return Container(
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
                    Text(
                      text,
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
                      "Method",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      height: 6.5 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5 * SizeConfig.widthMultiplier,
                          ),
                          Text(
                            val ?? "Select Payment method",
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
                                  "Bank",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                value: "Bank",
                              ),
                              PopupMenuItem<String>(
                                child: Text(
                                  "Paypal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                value: "Paypal",
                              ),
                              PopupMenuItem<String>(
                                child: Text(
                                  "Other",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                value: "Other",
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
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Bank",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      height: 6.5 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5 * SizeConfig.widthMultiplier,
                          ),
                          Text(
                            bank ?? "Select Bank",
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
                                  "HBL",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                value: "HBL",
                              ),
                              PopupMenuItem<String>(
                                child: Text(
                                  "MCB",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                value: "MCB",
                              ),
                              PopupMenuItem<String>(
                                child: Text(
                                  "Other",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                value: "Other",
                              ),
                            ],
                            onSelected: (value) {
                              setState(() {
                                bank = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Account Type",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      height: 6.5 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5 * SizeConfig.widthMultiplier,
                          ),
                          Text(
                            accounttype ?? "Select Type",
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
                                  "Saving",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                value: "Saving",
                              ),
                              PopupMenuItem<String>(
                                child: Text(
                                  "Current",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                value: "Current",
                              ),
                              PopupMenuItem<String>(
                                child: Text(
                                  "Other",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                value: "Other",
                              ),
                            ],
                            onSelected: (value) {
                              setState(() {
                                accounttype = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Account Holder Name",
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
                      controller: accountholdernamecontroller,
                      showicon: false,
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Account Holder No.",
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
                      controller: accountnumbercontroller,
                      showicon: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5 * SizeConfig.widthMultiplier,
                ),
                child: MyButton(
                  ontap: ontap,
                  text: buttontext,
                ),
              ),
              showbutton
                  ? Container()
                  : SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
              showbutton
                  ? SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    )
                  : Container(),
              showbutton
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: ontap2,
                          child: Text(
                            "Remove Staff",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: primarycolor,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w700,
                                fontSize: 1.8 * SizeConfig.textMultiplier),
                          ),
                        ),
                      ],
                    )
                  : Container(),
              showbutton
                  ? SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    )
                  : Container(),
            ],
          ),
        ),
      );
    }),
  );
}
