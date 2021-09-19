import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/views/auth/sign_In.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashDuration() {
    //todo look it Splash Screen Duration
    Timer(Duration(seconds: 3), () {
      //todo Change this to OnBoardingScreen
      Get.to(SignInScreen());
    });
  }

  @override
  void initState() {
    super.initState();
    splashDuration();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // MySize().init(context);

    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          // color: AppColor.violetColor,
          image: DecorationImage(
              image: AssetImage(
                'assets/images/splashimage.jpg',
              ),
              fit: BoxFit.cover)),
      child: Center(
        child: Text('Food Byte',
            style: kTextStyle.copyWith(
                fontSize: 56,
                color: kSplashTextColor,
                fontWeight: FontWeight.bold)),
      ),
    ));
  }
}
