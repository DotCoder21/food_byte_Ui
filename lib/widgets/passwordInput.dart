import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:get/get.dart';

class PasswordInput extends StatelessWidget {
  PasswordInput({
    this.icon,
    this.hint,
    this.inputType,
    this.inputAction,
    this.passController,
  });

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  TextEditingController passController;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.grey[500].withOpacity(0.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: TextField(
            controller: passController,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  icon,
                  size: Get.height * 0.03,
                  color: kWhite,
                ),
              ),
              hintText: hint,
              hintStyle: kTextStyle.copyWith(fontSize: Get.height * 0.034),
            ),
            obscureText: true,
            style: kTextStyle,
            // keyboardType: inputType,
            //textInputAction: inputAction,
          ),
        ),
      ),
    );
  }
}
