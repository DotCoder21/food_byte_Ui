import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';

Container customAppBar(IconData icon, String pageName, String title) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(icon),
        Text(
          pageName,
          style: kTextStyle.copyWith(
            color: kDarkTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        Text(
          title,
          style: kTextStyle.copyWith(
            color: kDarkTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}
