// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';

class AuthDesign extends StatelessWidget {
  final Widget chilld;
  const AuthDesign({Key key, @required this.chilld}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    height: 25 * SizeConfig.heightMultiplier,
                    decoration: const BoxDecoration(
                      color: secondarycolor,
                      image: DecorationImage(
                        image: AssetImage("assests/images/bg 1.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: 20 * SizeConfig.heightMultiplier),
                    // height: 76.4 * SizeConfig.heightMultiplier,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(6 * SizeConfig.heightMultiplier),
                        topRight:
                            Radius.circular(6 * SizeConfig.heightMultiplier),
                      ),
                    ),
                    child: chilld,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
