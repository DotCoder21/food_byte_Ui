import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';

Row customTextRow(String title, String subtitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: kTextStyle.copyWith(
            color: kDarkTextColor, fontWeight: FontWeight.w600, fontSize: 24),
      ),
      Text(
        subtitle,
        style: kTextStyle.copyWith(
            color: kTextColor.withOpacity(0.6),
            fontWeight: FontWeight.w600,
            fontSize: 18),
      ),
    ],
  );
}
