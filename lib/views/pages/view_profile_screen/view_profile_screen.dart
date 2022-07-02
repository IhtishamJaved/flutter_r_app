import 'package:flutter/material.dart';
import 'package:r_app/contant/colors.dart';
import 'package:r_app/views/pages/view_profile_screen/component/profile_container.dart';
import 'package:r_app/views/widgets/back_button.dart';
import 'package:r_app/views/widgets/my_button.dart';

import '../../../contant/sizeconfig.dart';

class ViewProfileScreen extends StatelessWidget {
  const ViewProfileScreen({Key key}) : super(key: key);

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
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 15 * SizeConfig.heightMultiplier,
                      width: 30 * SizeConfig.widthMultiplier,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        // image: DecorationImage(
                        //   image: AssetImage(
                        //       "assests/images/Screenshot 2022-03-29 at 1.36 1.png"),
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),
                    Text(
                      "Flower Pte. Ltd.",
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 2.5 * SizeConfig.textMultiplier),
                    ),
                    Text(
                      "ID 12345567",
                      style: TextStyle(
                          color: textcolor,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w500,
                          fontSize: 2 * SizeConfig.textMultiplier),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              const ViewProfileContainer(
                titletext: "Outlet",
                subtext: "Novena Square 2",
                showtext: false,
              ),
              const ViewProfileContainer(
                titletext: "Outlet Address",
                subtext: "Novena Square 2, 10 Sinaran Dr,\n#03-73/76, S307506",
                showtext: false,
              ),
              const ViewProfileContainer(
                titletext: "Operating Hours",
                subtext: "Tue - Sun, 10 AM to 9 PM",
                showtext: false,
              ),
              const ViewProfileContainer(
                titletext: "Email Address",
                subtext: "hello@flower.com",
                showtext: false,
              ),
              const ViewProfileContainer(
                titletext: "Contact No.",
                subtext: "+65 9182 8029",
                showtext: false,
              ),
              const ViewProfileContainer(
                titletext: "GST Info",
                subtext:
                    "Services                                                      7%",
                showtext: true,
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              MyButton(
                  ontap: () {
                    // Get.to(() => const AppointmentDetailsScreen());
                  },
                  text: "Edit Profile"),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
