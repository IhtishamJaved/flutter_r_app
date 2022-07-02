import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:r_app/views/pages/payment_method_screen/payment_detail_screen/payment_detail_screen.dart';

import '../../../contant/colors.dart';
import '../../../contant/sizeconfig.dart';
import '../../../model/payment_method_model.dart';
import '../../widgets/payment_method_add_and_edit_screen.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController bankaccountholdername = TextEditingController();
    final TextEditingController bankaccountnumber = TextEditingController();

    String method;
    String bank;
    String accounttype;
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2 * SizeConfig.widthMultiplier),
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.keyboard_backspace),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 5 * SizeConfig.widthMultiplier),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                    Row(
                      children: [
                        Text(
                          "Payment Methods",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Quicksand",
                            fontSize: 2.6 * SizeConfig.textMultiplier,
                            color: textcolor,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            paymentmethodaddandedit(
                                context,
                                "Add Payment Method",
                                method,
                                bank,
                                accounttype,
                                bankaccountholdername,
                                bankaccountnumber,
                                "Confirm",
                                () {},
                                false,
                                () {});
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
                        itemCount: paymentmethodmodel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(() => PaymentMethodDetailScreen(
                                    index: index,
                                  ));
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        paymentmethodmodel[index].name,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Quicksand",
                                          fontSize:
                                              2 * SizeConfig.textMultiplier,
                                          color: textcolor,
                                        ),
                                      ),
                                      Text(
                                        paymentmethodmodel[index].accountnumber,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
