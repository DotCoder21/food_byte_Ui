import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:get/get.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    this.buttonName,
    this.onPress,
  });

  final String? buttonName;
  Function? onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,

      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kBlue,
      ),
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: () => onPress!(),
        child: Text(
          buttonName!,
          style: kTextStyle.copyWith(
              fontWeight: FontWeight.bold, fontSize: Get.height * 0.026),
        ),
      ),
    );
  }
}
