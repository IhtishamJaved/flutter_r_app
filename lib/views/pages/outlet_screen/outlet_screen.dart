import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icofont_flutter/icofont_flutter.dart';


import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import '../../../model/customer_model.dart';
import '../../widgets/auth_text_field.dart';
import '../../widgets/my_button.dart';
import '../outlet_edit_screen/outlet_edit_screen.dart';

class OutletScreen extends StatefulWidget {
  const OutletScreen({Key key}) : super(key: key);

  @override
  State<OutletScreen> createState() => _OutletScreenState();
}

class _OutletScreenState extends State<OutletScreen> {
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
                          "Outlet",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Quicksand",
                            fontSize: 2.6 * SizeConfig.textMultiplier,
                            color: textcolor,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
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
                    const Text(
                      "(4) Results",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Quicksand",
                        color: textcolor,
                      ),
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: customermodel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 4 * SizeConfig.heightMultiplier,
                            width: double.infinity,
                            margin: EdgeInsets.only(
                                bottom: 1 * SizeConfig.heightMultiplier),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  customermodel[index].outletname,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Quicksand",
                                    fontSize: 2.2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {
                                    duplicateoutlet(context);
                                  },
                                  icon: const Icon(Icons.content_copy),
                                  color: textcolor,
                                  iconSize: 2.2 * SizeConfig.heightMultiplier,
                                ),
                                IconButton(
                                  onPressed: () {
                                    Get.to(() => const OutletEditScreen());
                                  },
                                  icon: const Icon(IcoFontIcons.uiEdit),
                                  iconSize: 2.2 * SizeConfig.heightMultiplier,
                                  color: primarycolor,
                                ),
                              ],
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

  bool servicedata = false;
  bool productdata = false;
  bool staffdata = false;
  final TextEditingController outletname = TextEditingController();
  final TextEditingController streetaddress = TextEditingController();
  final TextEditingController unitnumber = TextEditingController();
  final TextEditingController postalcode = TextEditingController();

  void duplicateoutlet(
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
                          "Duplicate",
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
                          "Please select data you want to duplicate from Outlet Name 1",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: textcolor,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.w600,
                              fontSize: 1.8 * SizeConfig.textMultiplier),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: white,
                        activeColor: primarycolor,
                        value: servicedata,
                        onChanged: (bool value) {
                          setState(() {
                            servicedata = value;
                          });
                        },
                      ),
                      Text(
                        "Service Data",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Quicksand",
                          fontSize: 2 * SizeConfig.textMultiplier,
                          color: textcolor,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: white,
                        activeColor: primarycolor,
                        value: productdata,
                        onChanged: (bool value) {
                          setState(() {
                            productdata = value;
                          });
                        },
                      ),
                      Text(
                        "Product Data",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Quicksand",
                          fontSize: 2 * SizeConfig.textMultiplier,
                          color: textcolor,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: white,
                        activeColor: primarycolor,
                        value: staffdata,
                        onChanged: (bool value) {
                          setState(() {
                            staffdata = value;
                          });
                        },
                      ),
                      Text(
                        "Staff data",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Quicksand",
                          fontSize: 2 * SizeConfig.textMultiplier,
                          color: textcolor,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 4 * SizeConfig.widthMultiplier,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New Outlet Name",
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
                          controller: outletname,
                          showicon: false,
                        ),
                        Text(
                          "Outlet Address",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: textcolor,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.w700,
                              fontSize: 1.8 * SizeConfig.textMultiplier),
                        ),
                        AuthTextfeild(
                          obscuretext: false,
                          hinttext: "Enter street address",
                          controller: streetaddress,
                          showicon: false,
                        ),
                        AuthTextfeild(
                          obscuretext: false,
                          hinttext: "Unit No.",
                          controller: unitnumber,
                          showicon: false,
                        ),
                        AuthTextfeild(
                          obscuretext: false,
                          hinttext: "Potal Code",
                          controller: streetaddress,
                          showicon: false,
                        ),
                        MyButton(ontap: () {}, text: "Duplicate"),
                        SizedBox(
                          height: 3 * SizeConfig.heightMultiplier,
                        ),
                      ],
                    ),
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
