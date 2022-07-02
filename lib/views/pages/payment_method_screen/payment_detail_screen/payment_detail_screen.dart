import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';
import '../../../../model/payment_method_model.dart';
import '../../../widgets/payment_method_add_and_edit_screen.dart';


class PaymentMethodDetailScreen extends StatelessWidget {
  const PaymentMethodDetailScreen({Key key, @required this.index})
      : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    final TextEditingController editbankaccountholdername =
        TextEditingController();
    final TextEditingController editbankaccountnumber = TextEditingController();
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
                              "Edit Payment Method",
                              method,
                              bank,
                              accounttype,
                              editbankaccountholdername,
                              editbankaccountnumber,
                              "Update",
                              () {
                                Get.back();
                              },
                              true,
                              () {
                                Get.back();
                              },
                            );
                          },
                          child: Text(
                            "Edit",
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
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Bank Transfer",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Quicksand",
                        fontSize: 1.6 * SizeConfig.textMultiplier,
                        color: Colors.black26,
                      ),
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      paymentmethodmodel[index].bankname,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Quicksand",
                        fontSize: 2.3 * SizeConfig.textMultiplier,
                        color: textcolor,
                      ),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Account Holder",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Quicksand",
                        fontSize: 1.6 * SizeConfig.textMultiplier,
                        color: Colors.black26,
                      ),
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      paymentmethodmodel[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Quicksand",
                        fontSize: 2.3 * SizeConfig.textMultiplier,
                        color: textcolor,
                      ),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Account Type",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Quicksand",
                        fontSize: 1.6 * SizeConfig.textMultiplier,
                        color: Colors.black26,
                      ),
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      paymentmethodmodel[index].accounttype,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Quicksand",
                        fontSize: 2.3 * SizeConfig.textMultiplier,
                        color: textcolor,
                      ),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "Account No.",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Quicksand",
                        fontSize: 1.6 * SizeConfig.textMultiplier,
                        color: Colors.black26,
                      ),
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      paymentmethodmodel[index].accountnumber,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Quicksand",
                        fontSize: 2.3 * SizeConfig.textMultiplier,
                        color: textcolor,
                      ),
                    ),
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
