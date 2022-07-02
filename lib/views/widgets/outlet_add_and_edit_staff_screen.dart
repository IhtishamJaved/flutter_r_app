import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';
import 'auth_text_field.dart';
import 'my_button.dart';

void outletaddandeditstaff(
  context,
  String text,
  TextEditingController staffnamecontroller,
  TextEditingController staffemailcontroller,
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
                      "Name",
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
                      controller: staffnamecontroller,
                      showicon: false,
                    ),
                    Text(
                      "Email",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                    AuthTextfeild(
                      obscuretext: false,
                      hinttext: "Enter Email",
                      controller: staffemailcontroller,
                      showicon: false,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4 * SizeConfig.heightMultiplier,
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
                      height: 2 * SizeConfig.heightMultiplier,
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
