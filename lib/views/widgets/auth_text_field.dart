import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

import '../../contant/sizeconfig.dart';

// ignore: must_be_immutable
class AuthTextfeild extends StatefulWidget {
  AuthTextfeild(
      {Key key,
      @required this.obscuretext,
      @required this.hinttext,
      @required this.controller,
      @required this.showicon})
      : super(key: key);
  bool obscuretext;
  final String hinttext;
  final TextEditingController controller;
  final bool showicon;
  @override
  State<AuthTextfeild> createState() => _AuthTextfeildState();
}

class _AuthTextfeildState extends State<AuthTextfeild> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        controller: widget.controller,
        cursorColor: Colors.black12,
        cursorWidth: 1,
        obscureText: widget.obscuretext,
        decoration: InputDecoration(
          suffixIcon: widget.showicon
              ? IconButton(
                  icon: widget.obscuretext
                      ? const Icon(
                          OMIcons.visibility,
                          color: Colors.black45,
                        )
                      : const Icon(
                          OMIcons.visibilityOff,
                          color: Colors.black45,
                        ),
                  onPressed: () {
                    setState(() {
                      widget.obscuretext = !widget.obscuretext;
                    });
                  },
                )
              : null,
          hintText: widget.hinttext,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: "Quicksand",
            fontSize: 2 * SizeConfig.textMultiplier,
            color: Colors.black26,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
