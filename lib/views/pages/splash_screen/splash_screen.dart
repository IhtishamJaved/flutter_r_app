import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../auth/login_screen/login_screen.dart';
import '../../../contant/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.off(() => const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondarycolor,
      body: SafeArea(
        child: Column(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}
