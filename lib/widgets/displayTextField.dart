import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:get/get.dart';

Widget displayTextField({
  String labelText,
  Function validaterHandler,
  Function savedHandler,
  bool obsecureText = false,
  TextInputType keyboardType,
  TextEditingController controller,
  bool disabled = false,
  Widget suffixIcon,
  Widget prefixIcon,
  Widget hintStyles,
}) {
  return TextFormField(
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
      fillColor: Colors.white,
      filled: true,
      hintText: labelText,
      errorStyle: TextStyle(color: Colors.red[50]),
      hintStyle: kTextStyle.copyWith(
          color: kTextColor,
          fontSize: Get.height * 0.022,
          fontWeight: FontWeight.w600),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.black12)),
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
    ),
    controller: controller,
    obscureText: obsecureText,
    validator: validaterHandler,
    onSaved: savedHandler,
    keyboardType: keyboardType,
  );
}
