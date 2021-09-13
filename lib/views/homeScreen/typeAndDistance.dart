import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:get/get.dart';

Container typeAndDistance(
    {Color color1, Color color2, String title, Color color, bool isGri}) {
  return Container(
    decoration: BoxDecoration(
        gradient: isGri ? LinearGradient(colors: [color1, color2]) : null,
        color: color,
        borderRadius: BorderRadius.circular(16)),
    height: Get.height * 0.032,
    width: Get.width * 0.15,
    child: Center(
      child: Text(
        title,
        style: kTextStyle.copyWith(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
