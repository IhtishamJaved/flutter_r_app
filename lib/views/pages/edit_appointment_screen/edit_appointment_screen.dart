// ignore_for_file: missing_required_param

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:r_app/views/widgets/back_button.dart';
import 'package:r_app/views/widgets/bottom_sheetsss.dart';
import 'package:r_app/views/widgets/my_button.dart';

import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import '../../../contant/utils.dart';
import 'component/edit_appointment_text_field.dart';

class EditAppointmentScreen extends StatefulWidget {
  const EditAppointmentScreen({Key key}) : super(key: key);

  @override
  State<EditAppointmentScreen> createState() => _EditAppointmentScreenState();
}

String value = "";
bool active = false;
String value2 = "";
bool active2 = false;
bool value3 = false;
bool value4 = false;
bool value5 = false;
List dropDownListData = [
  {"title": "Hair Cut", "value": "1"},
  {"title": "Hair Dye", "value": "2"},
];

String defaultValue = "";

String secondDropDown = "";
List dropDownListData2 = [
  {"title": "Ali", "value": "1"},
  {"title": "Alice", "value": "2"},
];

String defaultValue2 = "";

String secondDropDown2 = "";

class _EditAppointmentScreenState extends State<EditAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: EdgeInsets.only(
              left: 4 * SizeConfig.widthMultiplier,
              right: 4 * SizeConfig.widthMultiplier),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ArrowBackButtons(),
                Text(
                  "Edit Ava Loh’s\nAppointment",
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w700,
                      fontSize: 3 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 4 * SizeConfig.heightMultiplier,
                ),
                Text(
                  "Appointment Date",
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w700,
                      fontSize: 2.2 * SizeConfig.textMultiplier),
                ),
                Container(
                  height: 6.5 * SizeConfig.heightMultiplier,
                  margin: EdgeInsets.symmetric(
                      // horizontal: 4 * SizeConfig.widthMultiplier,
                      vertical: 1.5 * SizeConfig.heightMultiplier),
                  padding: EdgeInsets.only(
                    left: 3.5 * SizeConfig.widthMultiplier,
                    top: 0 * SizeConfig.heightMultiplier,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      active
                          ? GestureDetector(
                              onTap: () {
                                Utils.showSheet(
                                  context,
                                  child: buildDateTimePicker(
                                      CupertinoDatePickerMode.date),
                                  onClicked: () {
                                    value = DateFormat('MM/dd/yyyy')
                                        .format(dateTime);

                                    Navigator.pop(context);
                                    setState(() {
                                      active = true;
                                    });
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.transparent,
                                width: 27 * SizeConfig.heightMultiplier,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                Utils.showSheet(
                                  context,
                                  child: buildDateTimePicker(
                                      CupertinoDatePickerMode.date),
                                  onClicked: () {
                                    value = DateFormat('MM/dd/yyyy')
                                        .format(dateTime);

                                    Navigator.pop(context);
                                    setState(() {
                                      active = true;
                                    });
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.transparent,
                                width: 27 * SizeConfig.heightMultiplier,
                                child: Text(
                                  "Select Date",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                              ),
                            ),
                      SizedBox(
                        width: 12 * SizeConfig.widthMultiplier,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 0 * SizeConfig.heightMultiplier),
                        child: IconButton(
                          onPressed: () {
                            Utils.showSheet(
                              context,
                              child: buildDateTimePicker(
                                  CupertinoDatePickerMode.date),
                              onClicked: () {
                                value =
                                    DateFormat('MM/dd/yyy').format(dateTime);

                                Navigator.pop(context);
                                setState(() {
                                  active = true;
                                });
                              },
                            );
                          },
                          icon: Icon(
                            Icons.calendar_today_outlined,
                            color: textcolor,
                            size: 3 * SizeConfig.textMultiplier,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Appointment Time",
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w700,
                      fontSize: 2.2 * SizeConfig.textMultiplier),
                ),
                Container(
                  height: 6.5 * SizeConfig.heightMultiplier,
                  margin: EdgeInsets.symmetric(
                      // horizontal: 4 * SizeConfig.widthMultiplier,
                      vertical: 1.5 * SizeConfig.heightMultiplier),
                  padding: EdgeInsets.only(
                    left: 3.5 * SizeConfig.widthMultiplier,
                    top: 0 * SizeConfig.heightMultiplier,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      active2
                          ? GestureDetector(
                              onTap: () {
                                Utils.showSheet(
                                  context,
                                  child: buildDateTimePicker(
                                      CupertinoDatePickerMode.time),
                                  onClicked: () {
                                    value2 =
                                        DateFormat('HH:mm').format(dateTime);

                                    Navigator.pop(context);
                                    setState(() {
                                      active2 = true;
                                    });
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.transparent,
                                width: 27 * SizeConfig.heightMultiplier,
                                child: Text(
                                  value2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                Utils.showSheet(
                                  context,
                                  child: buildDateTimePicker(
                                      CupertinoDatePickerMode.time),
                                  onClicked: () {
                                    value2 =
                                        DateFormat('HH:mm').format(dateTime);

                                    Navigator.pop(context);
                                    setState(() {
                                      active2 = true;
                                    });
                                  },
                                );
                              },
                              child: Container(
                                color: Colors.transparent,
                                width: 27 * SizeConfig.heightMultiplier,
                                child: Text(
                                  "Select Time",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                              ),
                            ),
                      SizedBox(
                        width: 12 * SizeConfig.widthMultiplier,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 0 * SizeConfig.heightMultiplier),
                        child: IconButton(
                          onPressed: () {
                            Utils.showSheet(
                              context,
                              child: buildDateTimePicker(
                                  CupertinoDatePickerMode.time),
                              onClicked: () {
                                value2 = DateFormat('HH:mm').format(dateTime);

                                Navigator.pop(context);
                                setState(() {
                                  active2 = true;
                                });
                              },
                            );
                          },
                          icon: Icon(
                            CupertinoIcons.time,
                            color: textcolor,
                            size: 3 * SizeConfig.textMultiplier,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          value3 = !value3;
                        });
                      },
                      child: Container(
                        height: 2.7 * SizeConfig.heightMultiplier,
                        width: 6 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                          color: value3 ? primarycolor : white,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                              color: value3 ? primarycolor : textcolor,
                              width: 2),
                          shape: BoxShape.rectangle,
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Icon(
                                CupertinoIcons.check_mark,
                                color: value3 ? white : textcolor,
                                size: 2 * SizeConfig.heightMultiplier,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2 * SizeConfig.widthMultiplier,
                    ),
                    Text(
                      "Send reminder a day before appointment.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Quicksand",
                        fontSize: 1.5 * SizeConfig.textMultiplier,
                        color: textcolor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Text(
                  "Send reminder by",
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w700,
                      fontSize: 2.2 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          value4 = !value4;
                        });
                      },
                      child: Container(
                        height: 2 * SizeConfig.heightMultiplier,
                        width: 6 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                          //        color: value4 ? primarycolor : white,
                          // borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                              color: value4 ? primarycolor : textcolor,
                              width: 3.5),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2 * SizeConfig.widthMultiplier,
                    ),
                    Text(
                      "SMS",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Quicksand",
                        fontSize: 1.5 * SizeConfig.textMultiplier,
                        color: textcolor,
                      ),
                    ),
                    SizedBox(
                      width: 5 * SizeConfig.widthMultiplier,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          value5 = !value5;
                        });
                      },
                      child: Container(
                        height: 2 * SizeConfig.heightMultiplier,
                        width: 6 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: value5 ? primarycolor : textcolor,
                              width: 3.5),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2 * SizeConfig.widthMultiplier,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Quicksand",
                        fontSize: 1.5 * SizeConfig.textMultiplier,
                        color: textcolor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Text(
                  "Reminder Message",
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w700,
                      fontSize: 2.2 * SizeConfig.textMultiplier),
                ),
                EditAppointmentTextField(
                  maxline: null,
                  keyboardtype: TextInputType.multiline,
                  controller: null,
                  height: 13 * SizeConfig.heightMultiplier,
                  text: "Hostel Details",
                  hinttext: "Reminder Message",
                  validations: (value) {
                    if (value.isEmpty) {
                      return "Please Enter Hostel Detail";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),
                Text(
                  "Services",
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w700,
                      fontSize: 2.2 * SizeConfig.textMultiplier),
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
                    color: const Color(0xffF8FAFF),
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
                                "Package XYZ",
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
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: 70 * SizeConfig.widthMultiplier,
                      child: Text(
                        "Assign to",
                        style: TextStyle(
                            color: textcolor,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w700,
                            fontSize: 2.2 * SizeConfig.textMultiplier),
                      ),
                    ),
                    SizedBox(
                      width: 12 * SizeConfig.widthMultiplier,
                    ),
                    Icon(
                      CupertinoIcons.question_circle,
                      color: textcolor,
                      size: 3 * SizeConfig.textMultiplier,
                    )
                  ],
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
                    color: const Color(0xffF8FAFF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        //  isDense: true,
                        value: defaultValue2,
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
                                "John",
                                style: TextStyle(
                                    color: textcolor,
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 1.8 * SizeConfig.textMultiplier),
                              ),
                              value: ""),
                          ...dropDownListData2
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
                            defaultValue2 = value;
                          });
                        }),
                  ),
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Text(
                  "Comment (Only you can see this)",
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w700,
                      fontSize: 2.2 * SizeConfig.textMultiplier),
                ),
                EditAppointmentTextField(
                  hinttext: "Comment",
                  maxline: null,
                  keyboardtype: TextInputType.multiline,
                  controller: null,
                  height: 13 * SizeConfig.heightMultiplier,
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
                MyButton(
                    ontap: () {
                      // bottomsheet(
                      //     context,
                      //     Column(
                      //       children: [
                      //         Container(
                      //           margin: EdgeInsets.only(
                      //               top: 10 * SizeConfig.heightMultiplier),
                      //           height: 30 * SizeConfig.heightMultiplier,
                      //           width: 58 * SizeConfig.widthMultiplier,
                      //           decoration: const BoxDecoration(
                      //               //      color: Colors.red,
                      //               image: DecorationImage(
                      //                   image: AssetImage(
                      //                       "assests/images/Team success _Flatline 1.png"),
                      //                   fit: BoxFit.cover)),
                      //         ),
                      //         Text(
                      //           "Successfully updated",
                      //           style: TextStyle(
                      //               color: textcolor,
                      //               fontFamily: "Quicksand",
                      //               fontWeight: FontWeight.w700,
                      //               fontSize: 2.8 * SizeConfig.textMultiplier),
                      //         ),
                      //         Padding(
                      //           padding: EdgeInsets.symmetric(
                      //               horizontal: 4 * SizeConfig.widthMultiplier,
                      //               vertical: 2 * SizeConfig.heightMultiplier),
                      //           child: MyButton(
                      //               ontap: () {
                      //                 Get.offAll(
                      //                     () => BottomNavigationTabBar());
                      //               },
                      //               text: "Back to Home"),
                      //         )
                      //       ],
                      //     ));

                      ////////////////////////     Error APpoINTMENT REGISTERION ////////////////////
                      bottomsheet(
                          context,
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 10 * SizeConfig.heightMultiplier),
                                height: 30 * SizeConfig.heightMultiplier,
                                width: 58 * SizeConfig.widthMultiplier,
                                decoration: const BoxDecoration(
                                    //      color: Colors.red,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assests/images/Explosion_Flatline 1.png"),
                                        fit: BoxFit.cover)),
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
                                      // Get.offAll(
                                      //     () => BottomNavigationTabBar());
                                    },
                                    text: "Try Again"),
                              )
                            ],
                          ));
                    },
                    text: "Save Changes"),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  DateTime dateTime = DateTime.now();

  Widget buildDateTimePicker(CupertinoDatePickerMode pickerMode) => SizedBox(
        height: 180,
        child: CupertinoDatePicker(
          initialDateTime: dateTime,
          mode: pickerMode,
          use24hFormat: false,
          onDateTimeChanged: (dateTime) =>
              setState(() => this.dateTime = dateTime),
        ),
      );
}
