import 'package:flutter/material.dart';

import '../../contant/sizeconfig.dart';

void bottomsheet(
  context,
  Widget chilld,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(35.0),
    ),
    builder: (context) => Container(
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
      child: chilld,
    ),
  );
}
