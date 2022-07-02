import 'package:flutter/material.dart';
import 'package:r_app/contant/colors.dart';
import 'package:r_app/contant/sizeconfig.dart';
import 'package:r_app/views/pages/notification_screen/component/notification_title.dart';

import '../../widgets/back_button.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
              left: 4 * SizeConfig.widthMultiplier,
              right: 4 * SizeConfig.widthMultiplier),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ArrowBackButtons(),
                Text(
                  "Notifications",
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w700,
                      fontSize: 3 * SizeConfig.textMultiplier),
                ),
                const NotificationTitle(),
                const NotificationTitle(),
                const NotificationTitle(),
                const NotificationTitle(),
                const NotificationTitle(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
