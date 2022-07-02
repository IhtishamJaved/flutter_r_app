import 'package:flutter/material.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';

class MyButton extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
 const MyButton({
    Key key,@required this.ontap,@required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(
          top: 1 * SizeConfig.heightMultiplier,
        ),
        height: 6.5 * SizeConfig.heightMultiplier,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: primarycolor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "Quicksand",
              fontSize: 2 * SizeConfig.textMultiplier,
              color: white,
            ),
          ),
        ),
      ),
    );
  }
}
