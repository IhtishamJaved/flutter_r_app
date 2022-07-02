import 'dart:io';

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

import '../../contant/colors.dart';
import '../../contant/sizeconfig.dart';
import '../../views/widgets/auth_design.dart';
import '../../views/widgets/auth_text_field.dart';
import '../../views/widgets/my_button.dart';

class CompanyRegistrationScreen extends StatefulWidget {
  const CompanyRegistrationScreen({Key key}) : super(key: key);

  @override
  State<CompanyRegistrationScreen> createState() =>
      _CompanyRegistrationScreenState();
}

File file;

class _CompanyRegistrationScreenState extends State<CompanyRegistrationScreen> {
  final TextEditingController outletname = TextEditingController();
  final TextEditingController streetname = TextEditingController();
  final TextEditingController unitnumber = TextEditingController();
  final TextEditingController postalcode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AuthDesign(
      chilld: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5 * SizeConfig.widthMultiplier,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 4 * SizeConfig.heightMultiplier,
            ),
            GestureDetector(
              onTap: () {
                selectImage(context);
              },
              child: Container(
                margin: EdgeInsets.only(
                  top: 2 * SizeConfig.heightMultiplier,
                  bottom: 2 * SizeConfig.heightMultiplier,
                  left: 35 * SizeConfig.widthMultiplier,
                ),
                height: 12 * SizeConfig.heightMultiplier,
                width: 12 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(
                  color: const Color(0xffF8FAFF),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: file != null
                        ? FileImage(file)
                        : const AssetImage(
                            'assests/images/—Pngtree—gallery vector icon_3876279.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 8 * SizeConfig.heightMultiplier,
                      left: 18 * SizeConfig.widthMultiplier),
                  child: Stack(
                    children: [
                      Icon(
                        CupertinoIcons.add_circled,
                        color: primarycolor,
                        size: 4 * SizeConfig.textMultiplier,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 6.5 * SizeConfig.heightMultiplier,
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
              child: Center(
                child: Text(
                  "Flower Pte. Ltd.",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Quicksand",
                    fontSize: 3 * SizeConfig.textMultiplier,
                    color: textcolor,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 32 * SizeConfig.widthMultiplier,
                ),
                Text(
                  "ID 12345678",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Quicksand",
                    fontSize: 2 * SizeConfig.textMultiplier,
                    color: textcolor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            Text(
              "Outlet Name",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Quicksand",
                fontSize: 2 * SizeConfig.textMultiplier,
                color: textcolor,
              ),
            ),
            AuthTextfeild(
              hinttext: "Enter name",
              obscuretext: false,
              controller: outletname,
              showicon: false,
            ),
            Text(
              "Outlet Address",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Quicksand",
                fontSize: 2 * SizeConfig.textMultiplier,
                color: textcolor,
              ),
            ),
            AuthTextfeild(
              hinttext: "Street Name",
              obscuretext: false,
              controller: streetname,
              showicon: false,
            ),
            AuthTextfeild(
              hinttext: "Unit No.",
              obscuretext: false,
              controller: unitnumber,
              showicon: false,
            ),
            AuthTextfeild(
              hinttext: "Postal Code",
              obscuretext: false,
              controller: postalcode,
              showicon: false,
            ),
            Text(
              "Contact No.",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Quicksand",
                fontSize: 2 * SizeConfig.textMultiplier,
                color: textcolor,
              ),
            ),
            Container(
              height: 6.5 * SizeConfig.heightMultiplier,
              margin: EdgeInsets.symmetric(
                vertical: 1.5 * SizeConfig.heightMultiplier,
              ),
              padding: EdgeInsets.only(
                left: 4 * SizeConfig.widthMultiplier,
                //        top: 2.4 * SizeConfig.heightMultiplier,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black12,
                  width: 1,
                ),
              ),
              child: IntlPhoneField(
                //       textAlign: TextAlign.center,
                showCountryFlag: false,
                disableLengthCheck: true,
                dropdownIconPosition: IconPosition.trailing,
                dropdownTextStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: "Quicksand",
                  fontSize: 2 * SizeConfig.textMultiplier,
                  color: Colors.black26,
                ),
                dropdownIcon: Icon(
                  CupertinoIcons.chevron_down,
                  size: 2 * SizeConfig.heightMultiplier,
                  color: Colors.black26,
                ),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 1.8 * SizeConfig.heightMultiplier),
                  hintText: "Enter No.",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Quicksand",
                    fontSize: 2 * SizeConfig.textMultiplier,
                    color: Colors.black26,
                  ),
                ),
                // controller: phonecontroller.phonenumber,
                initialCountryCode: 'PK',

                onChanged: (phoneNumber) {
                  // phonecontroller.phone.value =
                  //     phoneNumber.completeNumber;

                  // print(phonecontroller.phone.value);
                },
              ),
            ),
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            MyButton(ontap: () {}, text: "Next"),
            SizedBox(
              height: 2.5 * SizeConfig.heightMultiplier,
            ),
          ],
        ),
      ),
    );
  }

  selectImage(parentContext) {
    return showDialog(
      context: parentContext,
      builder: (context) {
        return SimpleDialog(
          title: Row(
            children: [
              SizedBox(
                width: 8 * SizeConfig.widthMultiplier,
              ),
              Text(
                "Upload Photo",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Quicksand",
                  fontSize: 3 * SizeConfig.textMultiplier,
                  color: textcolor,
                ),
              ),
            ],
          ),
          children: <Widget>[
            SimpleDialogOption(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: getimagefromcamera,
                      icon: const Icon(
                        CommunityMaterialIcons.camera_outline,
                        color: textcolor,
                      ),
                    ),
                    Text(
                      "Photo with Camera",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Quicksand",
                        fontSize: 2 * SizeConfig.textMultiplier,
                        color: textcolor,
                      ),
                    ),
                  ],
                ),
                onPressed: getimagefromcamera),
            SimpleDialogOption(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: getImageFromGallery,
                      icon: const Icon(
                        OMIcons.addPhotoAlternate,
                        color: textcolor,
                      ),
                    ),
                    Text(
                      "Image from Gallery",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Quicksand",
                        fontSize: 2 * SizeConfig.textMultiplier,
                        color: textcolor,
                      ),
                    ),
                  ],
                ),
                onPressed: getImageFromGallery),
            SimpleDialogOption(
              child: Row(
                children: [
                  SizedBox(
                    width: 40 * SizeConfig.widthMultiplier,
                  ),
                  Text(
                    "Cancel",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Quicksand",
                      fontSize: 2 * SizeConfig.textMultiplier,
                      color: textcolor,
                    ),
                  ),
                ],
              ),
              onPressed: () => Navigator.pop(context),
            )
          ],
        );
      },
    );
  }

  getImageFromGallery() async {
    try {
      Get.back();
      final pickedFile =
          // ignore: invalid_use_of_visible_for_testing_member
          await ImagePicker.platform
              .pickImage(source: ImageSource.gallery, imageQuality: 50);
      setState(() {
        file = File(pickedFile.path);
      });

      if (file == null) {
        //    print("pathnull");
      } else {}
    } catch (e) {
      // print(e.toString());
    }
  }

  getimagefromcamera() async {
    try {
      Get.back();
      final pickedFile =
          // ignore: invalid_use_of_visible_for_testing_member
          await ImagePicker.platform
              .pickImage(source: ImageSource.camera, imageQuality: 50);

      setState(() {
        if (pickedFile.path == null) {
          file = null;
        } else {
          file = File(pickedFile.path);
        }
      });

      if (file == null) {
        //   print("pathnull");
      } else {}
    } catch (e) {
      //print(e.toString());
    }
  }
}
