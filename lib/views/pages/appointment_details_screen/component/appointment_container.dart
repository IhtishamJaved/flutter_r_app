import 'package:flutter/material.dart';
import 'package:r_app/views/widgets/back_button.dart';
import 'package:r_app/views/widgets/bottom_sheetsss.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';
import '../../../widgets/my_button.dart';

class AppointmentContainer extends StatelessWidget {
  final String titletext;
  final String subtext;
  final bool showtext;
  //final String thirdtext;

  const AppointmentContainer({
    Key key,
    @required this.titletext,
    @required this.subtext,
    @required this.showtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titletext,
            style: TextStyle(
                color: textcolor,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w700,
                fontSize: 2.2 * SizeConfig.textMultiplier),
          ),
          SizedBox(
            height: .5 * SizeConfig.heightMultiplier,
          ),
          Row(
            children: [
              Container(
                color: Colors.transparent,
                width: 74 * SizeConfig.widthMultiplier,
                child: Text(
                  subtext,
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w400,
                      fontSize: 2 * SizeConfig.textMultiplier),
                ),
              ),
              showtext
                  ? GestureDetector(
                      onTap: () {
                        bottomsheet(
                            context,
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 4 * SizeConfig.widthMultiplier,
                                  right: 4 * SizeConfig.widthMultiplier,
                                  top: 2 * SizeConfig.heightMultiplier),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const ArrowBackButtons(),
                                    Text(
                                      "Replace with...",
                                      style: TextStyle(
                                          color: textcolor,
                                          fontFamily: "Quicksand",
                                          fontWeight: FontWeight.w700,
                                          fontSize:
                                              2.8 * SizeConfig.textMultiplier),
                                    ),
                                    SizedBox(
                                      height: 4 * SizeConfig.heightMultiplier,
                                    ),
                                    Text(
                                      "Staff",
                                      style: TextStyle(
                                          color: textcolor,
                                          fontFamily: "Quicksand",
                                          fontWeight: FontWeight.w700,
                                          fontSize:
                                              2.2 * SizeConfig.textMultiplier),
                                    ),
                                    Container(
                                      height: 6.5 * SizeConfig.heightMultiplier,
                                      margin: EdgeInsets.only(
                                          top: 2 * SizeConfig.heightMultiplier),
                                      padding: EdgeInsets.only(
                                        left: 4 * SizeConfig.widthMultiplier,
                                        top: 0.3 * SizeConfig.heightMultiplier,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: Colors.black12,
                                          width: 1,
                                        ),
                                      ),
                                      child: TextField(
                                        cursorColor: Colors.black12,
                                        cursorWidth: 1,
                                        decoration: InputDecoration(
                                          suffixIcon: Icon(
                                            Icons.search,
                                            size: 3 * SizeConfig.textMultiplier,
                                          ),
                                          hintText: "Search",
                                          hintStyle: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Quicksand",
                                            fontSize:
                                                2 * SizeConfig.textMultiplier,
                                            color: Colors.black12,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 38 * SizeConfig.heightMultiplier,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          // horizontal:
                                          //     4 * SizeConfig.widthMultiplier,
                                          vertical:
                                              2 * SizeConfig.heightMultiplier),
                                      child: MyButton(
                                          ontap: () {},
                                          text: "Confirm Replacement"),
                                    ),
                                  ],
                                ),
                              ),
                            ));
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Text(
                          "Replace",
                          style: TextStyle(
                              color: primarycolor,
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.w700,
                              fontSize: 2 * SizeConfig.textMultiplier),
                        ),
                      ),
                    )
                  : const SizedBox()
            ],
          ),
        ],
      ),
    );
  }
}
