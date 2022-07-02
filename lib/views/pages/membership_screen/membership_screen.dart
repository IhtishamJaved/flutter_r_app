import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import '../../../model/customer_model.dart';
import '../../widgets/auth_text_field.dart';
import '../../widgets/membership_textfeild.dart';
import '../../widgets/my_button.dart';

class MembershipScreen extends StatefulWidget {
  const MembershipScreen({Key key}) : super(key: key);

  @override
  State<MembershipScreen> createState() => _MembershipScreenState();
}

class _MembershipScreenState extends State<MembershipScreen> {
  @override
  void initState() {
    super.initState();
    membershipfee.text = '';
    editmembershipfee.text = "";
    membershipfee.addListener(
      () {
        setState(() {});
      },
    );
    editmembershipfee.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 4 * SizeConfig.heightMultiplier,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2 * SizeConfig.widthMultiplier),
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.keyboard_backspace),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 5 * SizeConfig.widthMultiplier),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                    Row(
                      children: [
                        Text(
                          "Memberships",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Quicksand",
                            fontSize: 2.6 * SizeConfig.textMultiplier,
                            color: textcolor,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            addnewmembership(context);
                          },
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
                      ],
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    const Text(
                      "(3) Results",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Quicksand",
                        color: textcolor,
                      ),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: customermodel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              editmembership(context);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 1 * SizeConfig.heightMultiplier,
                                  horizontal: 2 * SizeConfig.widthMultiplier),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 10 * SizeConfig.heightMultiplier,
                              width: double.infinity,
                              margin: EdgeInsets.only(
                                  bottom: 1 * SizeConfig.heightMultiplier),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(MdiIcons.dotsGrid),
                                  SizedBox(
                                    width: 5 * SizeConfig.widthMultiplier,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Membership Tier",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Quicksand",
                                              fontSize: 1.6 *
                                                  SizeConfig.textMultiplier,
                                              color: textcolor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        customermodel[index].membershipTier,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize:
                                              2.5 * SizeConfig.textMultiplier,
                                          fontFamily: "Quicksand",
                                          color: textcolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.keyboard_arrow_right,
                                    color: primarycolor,
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final TextEditingController namecontroller = TextEditingController();

  final TextEditingController membershipfee = TextEditingController();

  final TextEditingController cancellationfeecontroller =
      TextEditingController();
  final TextEditingController editnamecontroller = TextEditingController();

  final TextEditingController editmembershipfee = TextEditingController();

  final TextEditingController editcancellationfeecontroller =
      TextEditingController();
  void addnewmembership(
    context,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      builder: (context) => StatefulBuilder(builder: (BuildContext context,
          StateSetter setState /*You can rename this!*/) {
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
                        "Add New Tier",
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
                        controller: namecontroller,
                        showicon: false,
                      ),
                      SizedBox(
                        height: 1 * SizeConfig.heightMultiplier,
                      ),
                      Text(
                        "Membership Fee",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: textcolor,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w700,
                            fontSize: 1.8 * SizeConfig.textMultiplier),
                      ),
                      MembershipTextFeild(
                          controller: membershipfee, text: "Enter Amount"),
                      Text(
                        "Cancellation Fee",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: textcolor,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w700,
                            fontSize: 1.8 * SizeConfig.textMultiplier),
                      ),
                      AuthTextfeild(
                        obscuretext: false,
                        hinttext: "Enter Amount",
                        controller: cancellationfeecontroller,
                        showicon: false,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 14 * SizeConfig.heightMultiplier,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5 * SizeConfig.widthMultiplier,
                  ),
                  child: MyButton(
                      ontap: () {
                        Get.back();
                      },
                      text: "Confirm"),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  void editmembership(
    context,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      builder: (context) => StatefulBuilder(
        builder: (BuildContext context,
            StateSetter setState /*You can rename this!*/) {
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
                          "Edit Tier",
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
                          controller: editnamecontroller,
                          showicon: false,
                        ),
                        SizedBox(
                          height: 1 * SizeConfig.heightMultiplier,
                        ),
                        Text(
                          "Membership Fee",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: textcolor,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.w700,
                              fontSize: 1.8 * SizeConfig.textMultiplier),
                        ),
                        MembershipTextFeild(
                            controller: editmembershipfee,
                            text: "Enter Amount"),
                        Text(
                          "Cancellation Fee",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: textcolor,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.w700,
                              fontSize: 1.8 * SizeConfig.textMultiplier),
                        ),
                        AuthTextfeild(
                          obscuretext: false,
                          hinttext: "Enter Amount",
                          controller: editcancellationfeecontroller,
                          showicon: false,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12 * SizeConfig.heightMultiplier,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5 * SizeConfig.widthMultiplier,
                    ),
                    child: MyButton(
                        ontap: () {
                          Get.back();
                        },
                        text: "Confirm"),
                  ),
                  SizedBox(
                    height: 1 * SizeConfig.heightMultiplier,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Remove Tier",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Quicksand",
                            fontSize: 1.8 * SizeConfig.textMultiplier,
                            color: primarycolor,
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
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
