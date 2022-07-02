import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/views/pages/appointment_details_screen/component/appointment_container.dart';
import 'package:r_app/views/pages/edit_appointment_screen/edit_appointment_screen.dart';
import 'package:r_app/views/widgets/back_button.dart';

import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import '../../widgets/bottom_sheetsss.dart';
import '../../widgets/my_button.dart';

class AppointmentDetailsScreen extends StatefulWidget {
  const AppointmentDetailsScreen({Key key}) : super(key: key);

  @override
  State<AppointmentDetailsScreen> createState() =>
      _AppointmentDetailsScreenState();
}

class _AppointmentDetailsScreenState extends State<AppointmentDetailsScreen> {
  List dropDownListData = [
    {"title": "Hair Cut", "value": "1"},
    {"title": "Hair Dye", "value": "2"},
  ];

  String defaultValue = "";

  String secondDropDown = "";

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
                  "Paulee Tan’s\nAppointment Details",
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w700,
                      fontSize: 3 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Container(
                  height: 10 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      color: const Color(0xffF8FAFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10 * SizeConfig.widthMultiplier,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 2 * SizeConfig.heightMultiplier,
                          ),
                          Icon(
                            Icons.calendar_today_outlined,
                            size: 3 * SizeConfig.heightMultiplier,
                            color: textcolor,
                          ),
                          SizedBox(
                            height: .5 * SizeConfig.heightMultiplier,
                          ),
                          Text(
                            "29 Mar 2022",
                            style: TextStyle(
                                color: textcolor,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w600,
                                fontSize: 2 * SizeConfig.textMultiplier),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10 * SizeConfig.widthMultiplier,
                      ),
                      Column(
                        children: [
                          // SizedBox(
                          //   height: 2 * SizeConfig.heightMultiplier,
                          // ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 2 * SizeConfig.widthMultiplier),
                            height: 8 * SizeConfig.heightMultiplier,
                            width: 0.2 * SizeConfig.widthMultiplier,
                            decoration:
                                const BoxDecoration(color: Color(0xffE3E3E3)),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10 * SizeConfig.widthMultiplier,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 2 * SizeConfig.heightMultiplier,
                          ),
                          Icon(
                            CupertinoIcons.time,
                            size: 3 * SizeConfig.heightMultiplier,
                            color: textcolor,
                          ),
                          SizedBox(
                            height: .5 * SizeConfig.heightMultiplier,
                          ),
                          Text(
                            "10:30 AM",
                            style: TextStyle(
                                color: textcolor,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w600,
                                fontSize: 2 * SizeConfig.textMultiplier),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 4 * SizeConfig.heightMultiplier,
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
                  height: 1 * SizeConfig.heightMultiplier,
                ),
                Container(
                  height: 6 * SizeConfig.heightMultiplier,
                  padding: EdgeInsets.only(
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
                                    fontWeight: FontWeight.w500,
                                    fontSize: 2.2 * SizeConfig.textMultiplier),
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
                                    fontWeight: FontWeight.w500,
                                    fontSize: 2.2 * SizeConfig.textMultiplier),
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
                const AppointmentContainer(
                    titletext: "Total Price",
                    subtext: "${250}",
                    showtext: false),
                const AppointmentContainer(
                    titletext: "Customer ID",
                    subtext: "S129040 G",
                    showtext: false),
                const AppointmentContainer(
                    titletext: "Customer Type",
                    subtext: "Non-Member",
                    showtext: false),
                const AppointmentContainer(
                    titletext: "Email Address",
                    subtext: "pauleetan@gmail.com",
                    showtext: false),
                const AppointmentContainer(
                    titletext: "Contact No.",
                    subtext: "+65 9182 8029",
                    showtext: false),
                const AppointmentContainer(
                    titletext: "Assigned to",
                    subtext: "Jason Yeo",
                    showtext: true),
                const AppointmentContainer(
                    titletext: "Comment (Only you can see this)",
                    subtext:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    showtext: false),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                MyButton(
                    ontap: () {
                      Get.to(() => const EditAppointmentScreen());
                    },
                    text: "Edit Appointment"),
                SizedBox(
                  height: 3 * SizeConfig.heightMultiplier,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      bottomsheet(
                        context,
                        Column(
                          children: [
                            SizedBox(
                              height: 10 * SizeConfig.heightMultiplier,
                            ),
                            Container(
                              height: 28 * SizeConfig.heightMultiplier,
                              width: 55 * SizeConfig.widthMultiplier,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assests/images/Thinking_Flatline 1 (1).png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Cancel Appointment",
                              style: TextStyle(
                                  color: textcolor,
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 2.8 * SizeConfig.textMultiplier),
                            ),
                            Text(
                              "You are about to cancel an appointment with\nPaulee Tan. Are you sure? ",
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
                              child:
                                  MyButton(ontap: () {}, text: "Yes, I’m sure"),
                            ),
                            Container(
                              color: Colors.transparent,
                              height: 4 * SizeConfig.heightMultiplier,
                              child: Text(
                                "No, I’ve changed my mind",
                                style: TextStyle(
                                  color: primarycolor,
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 2 * SizeConfig.textMultiplier,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.transparent,
                      height: 4 * SizeConfig.heightMultiplier,
                      child: Text(
                        "Cancel Appointment",
                        style: TextStyle(
                          color: primarycolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 2 * SizeConfig.textMultiplier,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),
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
}
