import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';
import '../../../../model/services_model.dart';
import '../../../widgets/outlet_add_and_edit_staff_screen.dart';


class OutletStaffScreen extends StatelessWidget {
  const OutletStaffScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController addstaffnamecontroller =
        TextEditingController();
    final TextEditingController addstaffemailcontroller =
        TextEditingController();
    final TextEditingController editstaffnamecontroller =
        TextEditingController();
    final TextEditingController editstaffemailcontroller =
        TextEditingController();
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 4 * SizeConfig.widthMultiplier,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              Row(
                children: [
                  Text(
                    "Staff (10)",
                    style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w700,
                      fontSize: 1.8 * SizeConfig.textMultiplier,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      outletaddandeditstaff(
                        context,
                        "Add New staff",
                        addstaffnamecontroller,
                        addstaffemailcontroller,
                        "Confirm",
                        () {
                          Get.back();
                        },
                        false,
                        () {},
                      );
                    },
                    child: Text(
                      "Add New",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Quicksand",
                        fontSize: 1.8 * SizeConfig.textMultiplier,
                        color: primarycolor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1 * SizeConfig.heightMultiplier,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: outletstaffmodel.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        outletaddandeditstaff(
                          context,
                          "Edit staff",
                          editstaffnamecontroller,
                          editstaffemailcontroller,
                          "Confirm",
                          () {
                            Get.back();
                          },
                          true,
                          () {
                            Get.back();
                          },
                        );
                      },
                      child: Container(
                        height: 6 * SizeConfig.heightMultiplier,
                        width: double.infinity,
                        margin: EdgeInsets.only(
                            bottom: 1 * SizeConfig.heightMultiplier),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  outletstaffmodel[index].name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Quicksand",
                                    fontSize: 2 * SizeConfig.textMultiplier,
                                    color: textcolor,
                                  ),
                                ),
                                Text(
                                  "ID ${outletstaffmodel[index].id}",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Quicksand",
                                    color: textcolor,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              color: primarycolor,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
