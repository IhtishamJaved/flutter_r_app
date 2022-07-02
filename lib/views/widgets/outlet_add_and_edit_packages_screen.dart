import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';
import 'auth_text_field.dart';
import 'my_button.dart';
import 'outlet_service_textfeild.dart';


void outletaddandeditpackages(
  context,
  String text,
  TextEditingController servicenamecontroller,
  bool service1,
  bool service2,
  bool service3,
  bool service4,
  bool service5,
  bool service6,
  bool service7,
  bool service8,
  TextEditingController nonmemberpricecontroller,
  TextEditingController silverpricecontroller,
  TextEditingController goldpricecontroller,
  TextEditingController platinumpricecontroller,
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
                      controller: servicenamecontroller,
                      showicon: false,
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Package Includes",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                  ],
                ),
              ),
              checkboxRow(
                service1,
                service2,
                "Service 1",
                "Service 2",
                setState,
              ),
              checkboxRow(
                service3,
                service4,
                "Service 3",
                "Service 4",
                setState,
              ),
              checkboxRow(
                service5,
                service6,
                "Service 5",
                "Service 6",
                setState,
              ),
              checkboxRow(
                service7,
                service8,
                "Service 7",
                "Service 8",
                setState,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4 * SizeConfig.widthMultiplier,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Non-Member Price",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                    AuthTextfeild(
                      obscuretext: false,
                      hinttext: "Enter Price",
                      controller: nonmemberpricecontroller,
                      showicon: false,
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Member Price",
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
                    OutletServiceTextFeild(
                        controller: silverpricecontroller,
                        text: "Silver",
                        hinttext: 'Enter Amount'),
                    SizedBox(
                      height: 1.5 * SizeConfig.heightMultiplier,
                    ),
                    OutletServiceTextFeild(
                        controller: platinumpricecontroller,
                        text: "Platinum",
                        hinttext: 'Enter Amount'),
                    SizedBox(
                      height: 1.5 * SizeConfig.heightMultiplier,
                    ),
                    OutletServiceTextFeild(
                        controller: goldpricecontroller,
                        text: "Gold",
                        hinttext: 'Enter Amount'),
                    SizedBox(
                      height: 4 * SizeConfig.heightMultiplier,
                    ),
                    MyButton(
                      ontap: ontap,
                      text: buttontext,
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
                                  "Remove Service",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: primarycolor,
                                      fontFamily: "Quicksand",
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                          1.8 * SizeConfig.textMultiplier),
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
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }),
  );
}

StatefulBuilder checkboxRow(
    bool check1, bool check2, String text, String text1, StateSetter setState) {
  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
      return Row(
        children: [
          Row(
            children: [
              Checkbox(
                side: const BorderSide(
                  width: 0.5,
                  color: Colors.black38,
                ),
                checkColor: white,
                activeColor: primarycolor,
                value: check1,
                onChanged: (bool value) {
                  setState(() {
                    check1 = value;
                  });
                },
              ),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: "Quicksand",
                  fontSize: 2 * SizeConfig.textMultiplier,
                  color: textcolor,
                ),
              )
            ],
          ),
          SizedBox(
            width: 10 * SizeConfig.widthMultiplier,
          ),
          Row(
            children: [
              Checkbox(
                side: const BorderSide(
                  width: 0.5,
                  color: Colors.black38,
                ),
                checkColor: white,
                activeColor: primarycolor,
                value: check2,
                onChanged: (bool value) {
                  setState(() {
                    check2 = value;
                  });
                },
              ),
              Text(
                text1,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: "Quicksand",
                  fontSize: 2 * SizeConfig.textMultiplier,
                  color: textcolor,
                ),
              )
            ],
          ),
        ],
      );
    },
  );
}
