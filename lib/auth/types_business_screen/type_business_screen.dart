import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:r_app/views/roots/bottom_navigation_tabbar.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';
import '../../views/widgets/auth_design.dart';
import '../../views/widgets/my_button.dart';
import '../../views/widgets/service_tax_textfeild.dart';

class TyprOfBussinessScreen extends StatefulWidget {
  const TyprOfBussinessScreen({Key key}) : super(key: key);

  @override
  State<TyprOfBussinessScreen> createState() => _TyprOfBussinessScreenState();
}

class _TyprOfBussinessScreenState extends State<TyprOfBussinessScreen> {
  final TextEditingController servicestax = TextEditingController();
  final TextEditingController producttax = TextEditingController();
  String val;
  int _groupValue = -1;
  @override
  void initState() {
    super.initState();
    producttax.text = '';
    servicestax.text = '';
    servicestax.addListener(
      () {
        setState(() {});
      },
    );
    producttax.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AuthDesign(
      chilld: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 4 * SizeConfig.heightMultiplier,
          ),
          Row(
            children: [
              SizedBox(
                width: 3 * SizeConfig.widthMultiplier,
              ),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.keyboard_backspace,
                  color: textcolor,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 5 * SizeConfig.widthMultiplier,
              ),
              Text(
                "Type of Bussiness ",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Quicksand",
                  fontSize: 2 * SizeConfig.textMultiplier,
                  color: textcolor,
                ),
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
              SizedBox(
                width: 5 * SizeConfig.widthMultiplier,
              ),
            ],
          ),
          Container(
            height: 6.5 * SizeConfig.heightMultiplier,
            margin: EdgeInsets.symmetric(
              vertical: 1 * SizeConfig.heightMultiplier,
              horizontal: 5 * SizeConfig.widthMultiplier,
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
            child: Row(
              children: [
                SizedBox(
                  width: 5 * SizeConfig.widthMultiplier,
                ),
                Text(
                  val ?? "Select Bussiness Type",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Quicksand",
                    fontSize: 2 * SizeConfig.textMultiplier,
                    color: textcolor,
                  ),
                ),
                const Spacer(),
                PopupMenuButton(
                  icon: const Icon(
                    EvaIcons.arrowIosDownward,
                    color: textcolor,
                  ),
                  itemBuilder: (context) => [
                    PopupMenuItem<String>(
                      child: Text(
                        "Seller",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Quicksand",
                          fontSize: 2 * SizeConfig.textMultiplier,
                          color: textcolor,
                        ),
                      ),
                      value: "Seller",
                    ),
                    PopupMenuItem<String>(
                      child: Text(
                        "Buyer",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Quicksand",
                          fontSize: 2 * SizeConfig.textMultiplier,
                          color: textcolor,
                        ),
                      ),
                      value: "Buyer",
                    ),
                    PopupMenuItem<String>(
                      child: Text(
                        "Guest",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "Quicksand",
                          fontSize: 2 * SizeConfig.textMultiplier,
                          color: textcolor,
                        ),
                      ),
                      value: "Guest",
                    ),
                  ],
                  onSelected: (value) {
                    setState(() {
                      val = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 5 * SizeConfig.widthMultiplier,
              ),
              Text(
                "Tax for Our Services",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Quicksand",
                  fontSize: 2 * SizeConfig.textMultiplier,
                  color: textcolor,
                ),
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
              SizedBox(
                width: 5 * SizeConfig.widthMultiplier,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 5 * SizeConfig.widthMultiplier),
            child: ServiceTaxTextFeild(
              controller: servicestax,
              text: "Enter Amount",
            ),
          ),
          SizedBox(
            height: 1 * SizeConfig.heightMultiplier,
          ),
          Row(
            children: [
              SizedBox(
                width: 6 * SizeConfig.widthMultiplier,
              ),
              Text(
                "Do you sell products?",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Quicksand",
                  fontSize: 2 * SizeConfig.textMultiplier,
                  color: textcolor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1 * SizeConfig.heightMultiplier,
          ),
          Row(
            children: [
              _myRadioButton(
                title: "Yes",
                value: 0,
                onChanged: (newValue) => setState(() => _groupValue = newValue),
              ),
              _myRadioButton(
                title: "No",
                value: 1,
                onChanged: (newValue) => setState(() => _groupValue = newValue),
              ),
              SizedBox(
                width: 35 * SizeConfig.widthMultiplier,
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 5 * SizeConfig.widthMultiplier,
              ),
              Text(
                "Tax for Our Products",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Quicksand",
                  fontSize: 2 * SizeConfig.textMultiplier,
                  color: textcolor,
                ),
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
              SizedBox(
                width: 5 * SizeConfig.widthMultiplier,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 5 * SizeConfig.widthMultiplier),
            child: ServiceTaxTextFeild(
              controller: producttax,
              text: "Enter Amount",
            ),
          ),
          SizedBox(
            height: 5 * SizeConfig.heightMultiplier,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 5 * SizeConfig.widthMultiplier),
            child: MyButton(
                ontap: () {
                  Get.to(() => BottomNavigationTabBar());
                },
                text: "Let’s Get Started"),
          )
        ],
      ),
    );
  }

  Widget _myRadioButton({String title, int value, Function onChanged}) {
    return Expanded(
      child: RadioListTile(
        value: value,
        activeColor: primarycolor,
        groupValue: _groupValue,
        onChanged: onChanged,
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: "Quicksand",
            fontSize: 2 * SizeConfig.textMultiplier,
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
