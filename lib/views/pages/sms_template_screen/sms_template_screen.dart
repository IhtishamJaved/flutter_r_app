import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import '../../widgets/back_button.dart';
import '../../widgets/header_row.dart';
import '../../widgets/my_button.dart';
import '../edit_appointment_screen/component/edit_appointment_text_field.dart';

class SmsTemplateScreen extends StatefulWidget {
  const SmsTemplateScreen({Key key}) : super(key: key);

  @override
  State<SmsTemplateScreen> createState() => _SmsTemplateScreenState();
}

List dropDownListData = [
  {"title": "2 days before appointment", "value": "1"},
  {"title": "1 days before appointment", "value": "2"},
];

String defaultValue = "";

String secondDropDown = "";

class _SmsTemplateScreenState extends State<SmsTemplateScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                height: 40 * SizeConfig.heightMultiplier,
                text: "Hostel Details",
                validations: (value) {
                  if (value.isEmpty) {
                    return "Please Enter Hostel Detail";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Text(
                "Schedule to send",
                style: TextStyle(
                    color: textcolor,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w700,
                    fontSize: 2.3 * SizeConfig.textMultiplier),
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Container(
                height: 6 * SizeConfig.heightMultiplier,
                padding: EdgeInsets.only(
                    bottom: .3 * SizeConfig.heightMultiplier,
                    left: 4 * SizeConfig.widthMultiplier,
                    right: 4 * SizeConfig.widthMultiplier),
                decoration: BoxDecoration(
                  // color: const Color(0xffF8FAFF),
                  border: Border.all(color: Color(0xffE3E3E3)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      //  isDense: true,
                      value: defaultValue,
                      isExpanded: true,
                      menuMaxHeight: 350,
                      icon: Icon(
                        CupertinoIcons.chevron_down,
                        color: textcolor,
                        size: 3 * SizeConfig.heightMultiplier,
                      ),
                      items: [
                        DropdownMenuItem(
                            child: Text(
                              "3 days before appointment",
                              style: TextStyle(
                                  color: textcolor,
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 1.8 * SizeConfig.textMultiplier),
                            ),
                            value: ""),
                        ...dropDownListData
                            .map<DropdownMenuItem<String>>((data) {
                          return DropdownMenuItem(
                            child: Text(
                              data['title'],
                              style: TextStyle(
                                  color: textcolor,
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 1.8 * SizeConfig.textMultiplier),
                            ),
                            value: data['value'],
                          );
                        }).toList(),
                      ],
                      onChanged: (value) {
                        //         print("selected Value $value");
                        setState(() {
                          defaultValue = value;
                        });
                      }),
                ),
              ),
              SizedBox(
                height: 4 * SizeConfig.heightMultiplier,
              ),
              MyButton(ontap: () {}, text: "Save Changes"),
            ],
          ),
        ),
      ),
    );
  }
}
