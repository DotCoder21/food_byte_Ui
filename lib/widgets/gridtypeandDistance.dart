import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:get/get.dart';

Container gridTypeAndDistance(
    {Color color1, Color color2, String title, Color color, bool isGri}) {
  return Container(
    decoration: BoxDecoration(
        gradient: isGri ? LinearGradient(colors: [color1, color2]) : null,
        color: color,
        borderRadius: BorderRadius.circular(16)),
    height: Get.height * 0.015,
    width: Get.width * 0.07,
    child: Center(
      child: Text(
        title,
        style: kTextStyle.copyWith(
            color: Colors.white, fontSize: 5, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
