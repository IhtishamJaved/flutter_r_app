// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/contant/colors.dart';
import 'package:r_app/contant/sizeconfig.dart';
import 'package:r_app/views/pages/preview_receipt_screen/preview_receipt_screen.dart';
import 'package:r_app/views/widgets/my_button.dart';

import '../../widgets/back_button.dart';
import '../../widgets/header_row.dart';
import '../edit_appointment_screen/component/edit_appointment_text_field.dart';

class ReceiptTemplateScreen extends StatelessWidget {
  const ReceiptTemplateScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 4 * SizeConfig.widthMultiplier),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ArrowBackButtons(),
              const HeaderRow(titletext: "SMS Template", show: false),
              Text(
                "This message is to remind your customers for their \nappointment with you.",
                style: TextStyle(
                    color: textcolor,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w500,
                    fontSize: 1.6 * SizeConfig.textMultiplier),
              ),
              SizedBox(
                height: 4 * SizeConfig.heightMultiplier,
              ),
              Text(
                "Title",
                style: TextStyle(
                    color: textcolor,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w700,
                    fontSize: 2.3 * SizeConfig.textMultiplier),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 1 * SizeConfig.heightMultiplier,
                  //horizontal: 5 * SizeConfig.widthMultiplier,
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 1.5 * SizeConfig.heightMultiplier,
                    horizontal: 4 * SizeConfig.widthMultiplier),
                height: 6 * SizeConfig.heightMultiplier,
                width: 100 * SizeConfig.widthMultiplier,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xffE3E3E3), width: 1.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Thank you for supporting!",
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w500,
                      fontSize: 2 * SizeConfig.textMultiplier),
                ),
              ),
              SizedBox(
                height: 4 * SizeConfig.heightMultiplier,
              ),
              Text(
                "Content",
                style: TextStyle(
                    color: textcolor,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w700,
                    fontSize: 2.3 * SizeConfig.textMultiplier),
              ),
              EditAppointmentTextField(
                hinttext: "Enter content here...",
                maxline: null,
                keyboardtype: TextInputType.multiline,
                controller: null,
                height: 30 * SizeConfig.heightMultiplier,
                text: "Hostel Details",
                validations: (value) {
                  if (value.isEmpty) {
                    return "Please Enter Hostel Detail";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10 * SizeConfig.heightMultiplier,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const PreviewReceiptScreen());
                },
                child: Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      "Preview Receipt",
                      style: TextStyle(
                          color: primarycolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                          fontSize: 2 * SizeConfig.textMultiplier),
                    ),
                  ),
                ),
              ),
              MyButton(ontap: () {}, text: "Save Changes")
            ],
          ),
        ),
      ),
    );
  }
}
