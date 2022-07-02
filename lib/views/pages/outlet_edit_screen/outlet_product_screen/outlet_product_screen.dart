import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';
import '../../../../model/services_model.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/outlet_add_and_edit_product_screen.dart';
import '../../../widgets/service_tax_textfeild.dart';


class OutletProductScreen extends StatefulWidget {
  const OutletProductScreen({Key key}) : super(key: key);

  @override
  State<OutletProductScreen> createState() => _OutletProductScreenState();
}

class _OutletProductScreenState extends State<OutletProductScreen> {
  final TextEditingController producttaxcontroller = TextEditingController();
  final TextEditingController addproductnamecontroller =
      TextEditingController();
  final TextEditingController addnonmemberproductpricecontroller =
      TextEditingController();
  final TextEditingController addsilverproductcontroller =
      TextEditingController();
  final TextEditingController addgoldproductcontroller =
      TextEditingController();
  final TextEditingController addplatinumproductcontroller =
      TextEditingController();
  final TextEditingController editproductnamecontroller =
      TextEditingController();
  final TextEditingController editnonmemberproductpricecontroller =
      TextEditingController();
  final TextEditingController editsilverproductcontroller =
      TextEditingController();
  final TextEditingController editgoldproductcontroller =
      TextEditingController();
  final TextEditingController editplatinumproductcontroller =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    producttaxcontroller.text = '';
    producttaxcontroller.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
                    "Tax for Our Services",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: textcolor,
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w700,
                        fontSize: 1.8 * SizeConfig.textMultiplier),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      // ignore: deprecated_member_use
                      FontAwesomeIcons.questionCircle,
                      size: 2 * SizeConfig.heightMultiplier,
                    ),
                  ),
                ],
              ),
              ServiceTaxTextFeild(
                  controller: producttaxcontroller, text: "Enter amount"),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Row(
                children: [
                  Text(
                    "Products (10)",
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
                      outletaddandeditproducts(
                        context,
                        "Add New Product",
                        addproductnamecontroller,
                        addnonmemberproductpricecontroller,
                        addsilverproductcontroller,
                        addgoldproductcontroller,
                        addplatinumproductcontroller,
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
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: outletpackagemodel.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      outletaddandeditproducts(
                        context,
                        "Edit Product",
                        editproductnamecontroller,
                        editnonmemberproductpricecontroller,
                        editsilverproductcontroller,
                        editgoldproductcontroller,
                        editplatinumproductcontroller,
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
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 1 * SizeConfig.heightMultiplier,
                      ),
                      height: 16 * SizeConfig.heightMultiplier,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFedf1f9),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 14 * SizeConfig.heightMultiplier,
                            width: 30 * SizeConfig.widthMultiplier,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://www.oberlo.com/media/1603957118-winning-products.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 56 * SizeConfig.widthMultiplier,
                            height: 18 * SizeConfig.heightMultiplier,
                            margin: EdgeInsets.symmetric(
                              vertical: 1 * SizeConfig.heightMultiplier,
                              horizontal: 3 * SizeConfig.widthMultiplier,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Product Name",
                                  style: TextStyle(
                                    color: textcolor,
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 1.8 * SizeConfig.textMultiplier,
                                  ),
                                ),
                                textRow(
                                  "Non-Member",
                                  "\$${outletpackagemodel[1].nonmember}",
                                ),
                                textRow(
                                  "Silver",
                                  "\$${outletpackagemodel[1].silver}",
                                ),
                                textRow(
                                  "Gold",
                                  "\$${outletpackagemodel[1].gold}",
                                ),
                                textRow(
                                  "Platinum",
                                  "\$${outletpackagemodel[1].platinum}",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 1 * SizeConfig.heightMultiplier,
              ),
              MyButton(
                ontap: () {},
                text: "Save Changes",
              ),
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row textRow(String text1, String text2) {
    return Row(
      children: [
        Text(
          text1,
          style: TextStyle(
            color: textcolor,
            fontFamily: "Quicksand",
            fontWeight: FontWeight.w600,
            fontSize: 1.6 * SizeConfig.textMultiplier,
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 2 * SizeConfig.heightMultiplier,
          width: 10 * SizeConfig.widthMultiplier,
          child: Text(
            text2,
            style: TextStyle(
              color: textcolor,
              fontFamily: "Quicksand",
              fontWeight: FontWeight.w400,
              fontSize: 1.5 * SizeConfig.textMultiplier,
            ),
          ),
        ),
      ],
    );
  }
}
