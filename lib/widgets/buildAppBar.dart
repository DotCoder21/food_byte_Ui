import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:get/get.dart';

PreferredSize buildAppBar(
    {String title, Color color, IconData actionIcon1, IconData actionIcon2}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(Get.height * 0.07),
    child: Align(
      alignment: Alignment.center,
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: color,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          title,
          style: kTextStyle.copyWith(
              color: color,
              fontSize: Get.height * 0.028,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              actionIcon1,
              color: kDarkTextColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              actionIcon2,
              size: Get.height * 0.04,
              color: kDarkTextColor,
            ),
          ),
        ],
      ),
    ),
  );
}
