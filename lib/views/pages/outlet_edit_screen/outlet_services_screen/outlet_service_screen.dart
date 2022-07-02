import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';
import '../../../../model/services_model.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/outlet_add_and_edit_packages_screen.dart';
import '../../../widgets/outlet_add_and_edit_service_screen.dart';
import '../../../widgets/service_tax_textfeild.dart';

class OutletServiceScreen extends StatefulWidget {
  const OutletServiceScreen({Key key}) : super(key: key);

  @override
  State<OutletServiceScreen> createState() => _OutletServiceScreenState();
}

class _OutletServiceScreenState extends State<OutletServiceScreen> {
  final TextEditingController servicetaxcontroller = TextEditingController();
  final TextEditingController addservicenamecontroller =
      TextEditingController();
  final TextEditingController addnonmemberservicepricecontroller =
      TextEditingController();
  final TextEditingController addsilverservicecontroller =
      TextEditingController();
  final TextEditingController addgoldservicecontroller =
      TextEditingController();
  final TextEditingController addplatinumservicecontroller =
      TextEditingController();
  final TextEditingController editservicenamecontroller =
      TextEditingController();
  final TextEditingController editnonmemberservicepricecontroller =
      TextEditingController();
  final TextEditingController editsilverservicecontroller =
      TextEditingController();
  final TextEditingController editgoldservicecontroller =
      TextEditingController();
  final TextEditingController editplatinumservicecontroller =
      TextEditingController();
  final TextEditingController addpackagenamecontroller =
      TextEditingController();
  final TextEditingController addnonmemberpackagepricecontroller =
      TextEditingController();
  final TextEditingController addsilverpackagecontroller =
      TextEditingController();
  final TextEditingController addgoldpackagecontroller =
      TextEditingController();
  final TextEditingController addplatinumpackagecontroller =
      TextEditingController();
  final TextEditingController editpackagenamecontroller =
      TextEditingController();
  final TextEditingController editnonmemberpackagepricecontroller =
      TextEditingController();
  final TextEditingController editsilverpackagecontroller =
      TextEditingController();
  final TextEditingController editgoldpackagecontroller =
      TextEditingController();
  final TextEditingController editplatinumpackagecontroller =
      TextEditingController();
  @override
  void initState() {
    super.initState();
    servicetaxcontroller.text = '';
    servicetaxcontroller.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 3 * SizeConfig.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4 * SizeConfig.widthMultiplier,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Tax for Our Services",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: textcolor,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w700,
                            fontSize: 1.8 * SizeConfig.textMultiplier),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          // ignore: deprecated_member_use
                          FontAwesomeIcons.questionCircle,
                          size: 2 * SizeConfig.heightMultiplier,
                        ),
                      ),
                    ],
                  ),
                  ServiceTaxTextFeild(
                      controller: servicetaxcontroller, text: "Enter amount"),
                  SizedBox(
                    height: 2 * SizeConfig.heightMultiplier,
                  ),
                  Text(
                    "Services (2)",
                    style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w700,
                      fontSize: 1.8 * SizeConfig.textMultiplier,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 2 * SizeConfig.widthMultiplier,
                  ),
                  Container(
                    color: white,
                    height: 18 * SizeConfig.heightMultiplier,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: outletservicemodel.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            outletaddandeditservice(
                              context,
                              "Edit Service",
                              editservicenamecontroller,
                              editnonmemberservicepricecontroller,
                              editsilverservicecontroller,
                              editgoldservicecontroller,
                              editgoldservicecontroller,
                              "Update",
                              () {
                                Get.back();
                              },
                              true,
                              () {},
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 1 * SizeConfig.heightMultiplier,
                            ),
                            height: 18 * SizeConfig.heightMultiplier,
                            width: 18 * SizeConfig.heightMultiplier,
                            padding: EdgeInsets.symmetric(
                              vertical: 1.5 * SizeConfig.heightMultiplier,
                              horizontal: 2 * SizeConfig.widthMultiplier,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFF8FAFF),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  outletservicemodel[index].servicename,
                                  style: TextStyle(
                                    color: textcolor,
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 1.8 * SizeConfig.textMultiplier,
                                  ),
                                ),
                                textRow(
                                  "Non-Member",
                                  "\$${outletservicemodel[index].nonmember}",
                                ),
                                textRow(
                                  "Silver",
                                  "\$${outletservicemodel[index].silver}",
                                ),
                                textRow(
                                  "Gold",
                                  "\$${outletservicemodel[index].gold}",
                                ),
                                textRow(
                                  "Platinum",
                                  "\$${outletservicemodel[index].platinum}",
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      outletaddandeditservice(
                          context,
                          "Add New Service",
                          addservicenamecontroller,
                          addnonmemberservicepricecontroller,
                          addsilverservicecontroller,
                          addplatinumservicecontroller,
                          addgoldservicecontroller,
                          "Confirm", () {
                        Get.back();
                      }, false, () {});
                    },
                    child: Container(
                      height: 18 * SizeConfig.heightMultiplier,
                      margin: EdgeInsets.only(
                        left: 2 * SizeConfig.widthMultiplier,
                        right: 4 * SizeConfig.widthMultiplier,
                      ),
                      width: 18 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                        border: Border.all(
                          color: primarycolor,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 4 * SizeConfig.heightMultiplier,
                          color: primarycolor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5 * SizeConfig.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 4 * SizeConfig.widthMultiplier,
              ),
              child: Text(
                "Packages (2)",
                style: TextStyle(
                  color: textcolor,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.w700,
                  fontSize: 1.8 * SizeConfig.textMultiplier,
                ),
              ),
            ),
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 2 * SizeConfig.widthMultiplier,
                  ),
                  Container(
                    color: white,
                    height: 18 * SizeConfig.heightMultiplier,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: outletpackagemodel.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            outletaddandeditpackages(
                              context,
                              "Edit Package",
                              editpackagenamecontroller,
                              false,
                              false,
                              false,
                              false,
                              false,
                              false,
                              false,
                              false,
                              editnonmemberpackagepricecontroller,
                              editsilverpackagecontroller,
                              editgoldpackagecontroller,
                              editplatinumpackagecontroller,
                              "Confirm",
                              () {
                                Get.back();
                              },
                              true,
                              () {
                                Get.back();
                              },
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 1 * SizeConfig.heightMultiplier,
                            ),
                            height: 18 * SizeConfig.heightMultiplier,
                            width: 18 * SizeConfig.heightMultiplier,
                            padding: EdgeInsets.symmetric(
                              vertical: 1.5 * SizeConfig.heightMultiplier,
                              horizontal: 2 * SizeConfig.widthMultiplier,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFF8FAFF),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  outletpackagemodel[index].packagename,
                                  style: TextStyle(
                                    color: textcolor,
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 1.8 * SizeConfig.textMultiplier,
                                  ),
                                ),
                                textRow(
                                  "Non-Member",
                                  "\$${outletpackagemodel[index].nonmember}",
                                ),
                                textRow(
                                  "Silver",
                                  "\$${outletpackagemodel[index].silver}",
                                ),
                                textRow(
                                  "Gold",
                                  "\$${outletpackagemodel[index].gold}",
                                ),
                                textRow(
                                  "Platinum",
                                  "\$${outletpackagemodel[index].platinum}",
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      outletaddandeditpackages(
                        context,
                        "Add New Package",
                        addpackagenamecontroller,
                        false,
                        false,
                        false,
                        false,
                        false,
                        false,
                        false,
                        false,
                        addnonmemberpackagepricecontroller,
                        addsilverpackagecontroller,
                        addgoldpackagecontroller,
                        addplatinumpackagecontroller,
                        "Confirm",
                        () {
                          Get.back();
                        },
                        false,
                        () {
                          Get.back();
                        },
                      );
                    },
                    child: Container(
                      height: 18 * SizeConfig.heightMultiplier,
                      margin: EdgeInsets.only(
                        left: 2 * SizeConfig.widthMultiplier,
                        right: 4 * SizeConfig.widthMultiplier,
                      ),
                      width: 18 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                        border: Border.all(
                          color: primarycolor,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 4 * SizeConfig.heightMultiplier,
                          color: primarycolor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3 * SizeConfig.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4 * SizeConfig.widthMultiplier,
              ),
              child: MyButton(ontap: () {}, text: "Save Changes"),
            ),
            SizedBox(
              height: 3 * SizeConfig.heightMultiplier,
            ),
          ],
        ),
      ),
    );
  }

  Row textRow(String text1, String text2) {
    return Row(
      children: [
        Text(
          text1,
          style: TextStyle(
            color: textcolor,
            fontFamily: "Quicksand",
            fontWeight: FontWeight.w600,
            fontSize: 1.6 * SizeConfig.textMultiplier,
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 2 * SizeConfig.heightMultiplier,
          width: 10 * SizeConfig.widthMultiplier,
          child: Text(
            text2,
            style: TextStyle(
              color: textcolor,
              fontFamily: "Quicksand",
              fontWeight: FontWeight.w400,
              fontSize: 1.5 * SizeConfig.textMultiplier,
            ),
          ),
        ),
      ],
    );
  }
}
