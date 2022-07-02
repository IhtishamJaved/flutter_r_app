
import 'package:flutter/material.dart';

import '../../../../contant/sizeconfig.dart';

class EditAppointmentTextField extends StatefulWidget {
  const EditAppointmentTextField(
      {Key key,
      @required this.controller,
      @required this.height,
      @required this.maxline,
      @required this.text,
      @required this.keyboardtype,
      @required this.validations,
      @required this.hinttext,
      @required this.showicon,
      @required this.maxlines,
      @required this.color})
      : super(key: key);
  final TextEditingController controller;
  final double height;
  final String text;
  final TextInputType keyboardtype;
  final int maxline;
  // ignore: prefer_typing_uninitialized_variables
  final validations;

  final String hinttext;
  final bool showicon;
  final int maxlines;

  final Color color;

  @override
  State<EditAppointmentTextField> createState() =>
      _EditAppointmentTextFieldState();
}

class _EditAppointmentTextFieldState extends State<EditAppointmentTextField> {
  bool hidetext;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          vertical: 1 * SizeConfig.heightMultiplier,
          //horizontal: 5 * SizeConfig.widthMultiplier,
        ),
        padding:
            EdgeInsets.symmetric(horizontal: 4 * SizeConfig.widthMultiplier),
        height: widget.height,
        width: 100 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffE3E3E3), width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextFormField(
          //  obscureText: hidetext,
          controller: widget.controller,
          keyboardType: widget.keyboardtype,
          maxLines: widget.maxlines,
          validator: widget.validations,
          decoration: InputDecoration(
            isDense: true,
            border: InputBorder.none,
            hintText: widget.hinttext,
            hintStyle: TextStyle(
                color: widget.color,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w500,
                fontSize: 1.8 * SizeConfig.textMultiplier),
          ),
        ));
  }
}
