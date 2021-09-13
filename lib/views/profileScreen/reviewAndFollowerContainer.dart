import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';

Container reviewAndFollowerContainer(String title, String subtitle) {
  return Container(
    child: Column(
      children: [
        Text(
          title,
          style: kTextStyle.copyWith(
              color: kBlue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: kTextStyle.copyWith(
              color: kTextColor, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}
