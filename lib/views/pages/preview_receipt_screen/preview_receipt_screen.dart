import 'package:flutter/material.dart';
import 'package:r_app/contant/colors.dart';

import '../../../contant/sizeconfig.dart';

class PreviewReceiptScreen extends StatelessWidget {
  const PreviewReceiptScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffedf2ff),
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 4 * SizeConfig.widthMultiplier),
          child: Column(
            children: [
              Center(
                child: Container(
                  margin:
                      EdgeInsets.only(top: 10 * SizeConfig.heightMultiplier),
                  height: 30 * SizeConfig.heightMultiplier,
                  width: 60 * SizeConfig.widthMultiplier,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage(
                            "assests/images/Online payment_Flatline 1.png"),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Text(
                "Thank you for supporting!",
                style: TextStyle(
                    color: textcolor,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w700,
                    fontSize: 3 * SizeConfig.textMultiplier),
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Text(
                "Hope you enjoyed our services at <business name>!\nPlease do visit us again.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textcolor,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w400,
                    fontSize: 1.6 * SizeConfig.textMultiplier),
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Text(
                "Monday, 7 Jun 2022, 2:37 PM",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: primarycolor,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w700,
                    fontSize: 2 * SizeConfig.textMultiplier),
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              const Divider(
                color: Color(0xffE3E3E3),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 2 * SizeConfig.widthMultiplier,
                        top: .6 * SizeConfig.heightMultiplier),
                    height: 4 * SizeConfig.heightMultiplier,
                    width: 75 * SizeConfig.widthMultiplier,
                    color: Colors.transparent,
                    child: Text(
                      "Something",
                      //   textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w400,
                          fontSize: 2 * SizeConfig.textMultiplier),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 2 * SizeConfig.widthMultiplier,
                        top: .6 * SizeConfig.heightMultiplier),
                    height: 4 * SizeConfig.heightMultiplier,
                    width: 17 * SizeConfig.widthMultiplier,
                    color: Colors.transparent,
                    child: Text(
                      "20.00",
                      //   textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w400,
                          fontSize: 2 * SizeConfig.textMultiplier),
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 2 * SizeConfig.heightMultiplier,
              // ),
              const Divider(
                color: Color(0xffE3E3E3),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 2 * SizeConfig.widthMultiplier,
                        top: .6 * SizeConfig.heightMultiplier),
                    height: 4 * SizeConfig.heightMultiplier,
                    width: 75 * SizeConfig.widthMultiplier,
                    color: Colors.transparent,
                    child: Text(
                      "Something else",
                      //   textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w400,
                          fontSize: 2 * SizeConfig.textMultiplier),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 2 * SizeConfig.widthMultiplier,
                        top: .6 * SizeConfig.heightMultiplier),
                    height: 4 * SizeConfig.heightMultiplier,
                    width: 17 * SizeConfig.widthMultiplier,
                    color: Colors.transparent,
                    child: Text(
                      "80.00",
                      //   textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w400,
                          fontSize: 2 * SizeConfig.textMultiplier),
                    ),
                  ),
                ],
              ),

              const Divider(
                color: Color(0xffE3E3E3),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 2 * SizeConfig.widthMultiplier,
                        top: .6 * SizeConfig.heightMultiplier),
                    height: 4 * SizeConfig.heightMultiplier,
                    width: 75 * SizeConfig.widthMultiplier,
                    color: Colors.transparent,
                    child: Text(
                      "Subtotal",
                      //   textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w600,
                          fontSize: 2 * SizeConfig.textMultiplier),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 2 * SizeConfig.widthMultiplier,
                        top: .6 * SizeConfig.heightMultiplier),
                    height: 4 * SizeConfig.heightMultiplier,
                    width: 17 * SizeConfig.widthMultiplier,
                    color: Colors.transparent,
                    child: Text(
                      "100.0",
                      //   textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w400,
                          fontSize: 2 * SizeConfig.textMultiplier),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Color(0xffE3E3E3),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 2 * SizeConfig.widthMultiplier,
                        top: .6 * SizeConfig.heightMultiplier),
                    height: 4 * SizeConfig.heightMultiplier,
                    width: 75 * SizeConfig.widthMultiplier,
                    color: Colors.transparent,
                    child: Text(
                      "GST (10%)",
                      //   textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w600,
                          fontSize: 2 * SizeConfig.textMultiplier),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 2 * SizeConfig.widthMultiplier,
                        top: .6 * SizeConfig.heightMultiplier),
                    height: 4 * SizeConfig.heightMultiplier,
                    width: 17 * SizeConfig.widthMultiplier,
                    color: Colors.transparent,
                    child: Text(
                      "10.0",
                      //   textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w400,
                          fontSize: 2 * SizeConfig.textMultiplier),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: textcolor,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 2 * SizeConfig.widthMultiplier,
                        top: .6 * SizeConfig.heightMultiplier),
                    height: 4 * SizeConfig.heightMultiplier,
                    width: 75 * SizeConfig.widthMultiplier,
                    color: Colors.transparent,
                    child: Text(
                      "TOTAL",
                      //   textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 2.2 * SizeConfig.textMultiplier),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 2 * SizeConfig.widthMultiplier,
                        top: .6 * SizeConfig.heightMultiplier),
                    height: 4 * SizeConfig.heightMultiplier,
                    width: 17 * SizeConfig.widthMultiplier,
                    color: Colors.transparent,
                    child: Text(
                      "110.00",
                      //   textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 2.2 * SizeConfig.textMultiplier),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: textcolor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
