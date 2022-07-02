// ignore_for_file: missing_required_param

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import '../../../controller/new_customer_controller.dart';
import '../../../model/customer_model.dart';
import '../../widgets/auth_text_field.dart';
import '../../widgets/my_button.dart';
import '../customer_detail_screen.dart/customer_detail_screen.dart';
import '../edit_appointment_screen/component/edit_appointment_text_field.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key key}) : super(key: key);

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

bool value3 = false;
final newcustomerController = Get.put(NewCustomerController());

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 5 * SizeConfig.widthMultiplier),
            child: Column(
              children: [
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 6 * SizeConfig.heightMultiplier,
                        width: 10 * SizeConfig.widthMultiplier,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.notifications_sharp),
                      ),
                    ),
                    SizedBox(
                      width: 2 * SizeConfig.widthMultiplier,
                    ),
                    Container(
                      height: 6 * SizeConfig.heightMultiplier,
                      width: 12 * SizeConfig.widthMultiplier,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              "assests/images/Screenshot 2022-03-29 at 1.36 1.png",
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Row(
                  children: [
                    Text(
                      "Customers",
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
                        bottomsheet(context);
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Text(
                          "Add New",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Quicksand",
                            fontSize: 1.8 * SizeConfig.textMultiplier,
                            color: primarycolor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 6.5 * SizeConfig.heightMultiplier,
                  margin: EdgeInsets.symmetric(
                    vertical: 1.5 * SizeConfig.heightMultiplier,
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
                  child: TextField(
                    cursorColor: Colors.black12,
                    cursorWidth: 1,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Quicksand",
                        fontSize: 2 * SizeConfig.textMultiplier,
                        color: Colors.black26,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "(50) Results",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: "Quicksand",
                          color: textcolor,
                          fontSize: 2 * SizeConfig.textMultiplier),
                    ),
                    const Spacer(),
                    Icon(
                      MdiIcons.filterOutline,
                      color: textcolor,
                      size: 3 * SizeConfig.textMultiplier,
                    ),
                    Text(
                      "All customers",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Quicksand",
                          color: textcolor,
                          fontSize: 1.8 * SizeConfig.textMultiplier),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: textcolor,
                      size: 3 * SizeConfig.heightMultiplier,
                    ),
                  ],
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: customermodel.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => CustomerDetailScreen(index: index));
                        },
                        child: Container(
                          height: 8 * SizeConfig.heightMultiplier,
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              bottom: 1 * SizeConfig.heightMultiplier),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    customermodel[index].name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Quicksand",
                                      fontSize: 2 * SizeConfig.textMultiplier,
                                      color: textcolor,
                                    ),
                                  ),
                                  Text(
                                    "ID ${customermodel[index].customerid}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Quicksand",
                                      color: textcolor,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Icon(
                                CupertinoIcons.chevron_right_circle,
                                color: primarycolor,
                                size: 4 * SizeConfig.heightMultiplier,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
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

  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailaddress = TextEditingController();
  final TextEditingController commentcontroller = TextEditingController();

  void bottomsheet(
    context,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      builder: (context) => StatefulBuilder(
        builder: (BuildContext context, StateSetter setstate) {
          return Container(
            height: 80 * SizeConfig.heightMultiplier,
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
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
                          "Add New Customer",
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
                          text: "Hostel Details",
                          hinttext: "Reminder Message",
                          color: Colors.black12,
                          validations: (value) {
                            if (value.isEmpty) {
                              return "Please Enter Hostel Detail";
                            }
                            return null;
                          },
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setstate(() {
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
                              "Join membership programme",
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
                      ],
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Checkbox(
                  //       checkColor: white,
                  //       activeColor: primarycolor,
                  //       value: widget.value,
                  //       onChanged: (bool value) {
                  //         setState(() {
                  //           widget.value = value;
                  //         });
                  //       },
                  //     ),
                  //     Text(
                  //       "Remember me",
                  //       style: TextStyle(
                  //         fontWeight: FontWeight.w400,
                  //         fontFamily: "Quicksand",
                  //         fontSize: 2 * SizeConfig.textMultiplier,
                  //         color: textcolor,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 5 * SizeConfig.widthMultiplier),
                    child: MyButton(ontap: () {}, text: "Confirm"),
                  ),
                  SizedBox(
                    height: 2 * SizeConfig.heightMultiplier,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
