import 'package:flutter/material.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:r_app/views/pages/email_template_screen/email_template_screen.dart';
import 'package:r_app/views/pages/receipt_template_screen/receipt_template_screen.dart';
import 'package:r_app/views/pages/sms_template_screen/sms_template_screen.dart';

import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import '../membership_screen/membership_screen.dart';
import '../outlet_screen/outlet_screen.dart';
import '../payment_method_screen/payment_method_screen.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 5 * SizeConfig.widthMultiplier),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 6 * SizeConfig.heightMultiplier,
                        width: 10 * SizeConfig.widthMultiplier,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.notifications_sharp),
                      ),
                    ),
                    SizedBox(
                      width: 2 * SizeConfig.widthMultiplier,
                    ),
                    Container(
                      height: 6 * SizeConfig.heightMultiplier,
                      width: 12 * SizeConfig.widthMultiplier,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              "assests/images/Screenshot 2022-03-29 at 1.36 1.png",
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Row(
                  children: [
                    Text(
                      "More",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Quicksand",
                        fontSize: 3 * SizeConfig.textMultiplier,
                        color: textcolor,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings_outlined,
                            color: primarycolor,
                            size: 2.5 * SizeConfig.heightMultiplier,
                          ),
                          SizedBox(
                            width: 1 * SizeConfig.widthMultiplier,
                          ),
                          Text(
                            "App Setting",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: "Quicksand",
                              fontSize: 1.8 * SizeConfig.textMultiplier,
                              color: primarycolor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3 * SizeConfig.heightMultiplier,
                ),
                Text(
                  "Manage",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Quicksand",
                    fontSize: 1.8 * SizeConfig.textMultiplier,
                    color: textcolor,
                  ),
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),
                moreRow(
                  "Memberships",
                  LineAwesomeIcons.identification_card,
                  () {
                    Get.to(() => const MembershipScreen());
                  },
                ),
                line(),
                moreRow(
                  "Outlets",
                  LineariconsFree.store,
                  () {
                    Get.to(() => const OutletScreen());
                  },
                ),
                line(),
                moreRow(
                  "Wallet",
                  LineAwesomeIcons.wallet,
                  () {
                    Get.to(() => const PaymentMethods());
                  },
                ),
                SizedBox(
                  height: 6 * SizeConfig.heightMultiplier,
                ),
                Text(
                  "Templates",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Quicksand",
                    fontSize: 1.8 * SizeConfig.textMultiplier,
                    color: textcolor,
                  ),
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),
                moreRow(
                  "Reminder Email",
                  MdiIcons.emailOutline,
                  () {
                    Get.to(() => const EmailTemplateScreen());
                  },
                ),
                line(),
                moreRow(
                  "Reminder SMS",
                  OMIcons.sms,
                  () {
                    Get.to(() => const SmsTemplateScreen());
                  },
                ),
                line(),
                moreRow(
                  "Receipts",
                  OMIcons.receipt,
                  () {
                    Get.to(() => const ReceiptTemplateScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container line() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 2.5 * SizeConfig.heightMultiplier,
      ),
      height: 1,
      width: double.infinity,
      color: const Color(0xFFE3E3E3),
    );
  }

  Row moreRow(String text, IconData icon, VoidCallback tap) {
    return Row(
      children: [
        Icon(
          icon,
          size: 3 * SizeConfig.heightMultiplier,
          color: Colors.black38,
        ),
        SizedBox(
          width: 1 * SizeConfig.heightMultiplier,
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: "Quicksand",
            fontSize: 2.3 * SizeConfig.textMultiplier,
            color: textcolor,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: tap,
          child: const Icon(
            MdiIcons.arrowRightCircle,
            color: primarycolor,
          ),
        ),
      ],
    );
  }
}
