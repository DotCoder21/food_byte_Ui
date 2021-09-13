import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/widgets/background_Image.dart';
import 'package:food_bytes/widgets/customButton.dart';
import 'package:get/get.dart';

import '../home.dart';

class GetStartScreen extends StatefulWidget {
  @override
  _GetStartScreenState createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          image: 'assets/images/Vegitable.png',
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              height: Get.height,
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.026,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => Home());
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(16)),
                        height: Get.height * 0.05,
                        width: Get.width * 0.2,
                        child: Center(
                          child: Text(
                            'Skip',
                            style: kTextStyle.copyWith(
                                color: Colors.white,
                                fontSize: Get.height * 0.026,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Hi, john',
                    style: kTextStyle.copyWith(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                    'Welcome to',
                    style: kTextStyle.copyWith(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                    'Food Byte',
                    style: kTextStyle.copyWith(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: kYellowColor),
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Text(
                    'Please turn on your GPS to find\nout better restaurant suggestions\nnear you.',
                    maxLines: 3,
                    textAlign: TextAlign.start,
                    style: kTextStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RoundedButton(
                      buttonName: 'Turn on Gps',
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.09,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
