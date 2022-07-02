import 'package:flutter/material.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';

class ServiceTaxTextFeild extends StatelessWidget {
  const ServiceTaxTextFeild({
    Key key,
    @required this.controller,
    @required this.text,
  }) : super(key: key);

  final TextEditingController controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 6.5 * SizeConfig.heightMultiplier,
          width: 66 * SizeConfig.widthMultiplier,
          padding: EdgeInsets.only(
            left: 4 * SizeConfig.widthMultiplier,
            top: 0.3 * SizeConfig.heightMultiplier,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            border: Border.all(
              color: Colors.black12,
              width: 1,
            ),
          ),
          child: TextField(
            controller: controller,
            cursorColor: Colors.black12,
            cursorWidth: 1,
            decoration: InputDecoration(
              hintText: text,
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
        Container(
          height: 6.5 * SizeConfig.heightMultiplier,
          width: 24 * SizeConfig.widthMultiplier,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: controller.text.isNotEmpty ? primarycolor : Colors.black12,
          ),
          child: Center(
            child: Icon(
              Icons.percent,
              size: 2 * SizeConfig.heightMultiplier,
              color: controller.text.isNotEmpty ? white : textcolor,
            ),
          ),
        ),
      ],
    );
  }
}
