import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button extends StatelessWidget {
  String? buttonText;
  Color? buttonColor;
  VoidCallback? onTap;
  // TextStyle buttonTextStyle;
  double? widthPercent;
  Color? textColor;

  Button(
      {this.buttonText,
      this.buttonColor,
      this.onTap,
      this.textColor,
      this.widthPercent});
  double? width, height;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: SizedBox(
        width: Get.width * widthPercent!,
        child: MaterialButton(
          onPressed: onTap,
          color: buttonColor,
          shape: //StadiumBorder(),
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          // minWidth: width * widthPercent,
          height: 55,
          child: Text(
            buttonText!,
            style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight
                    .w600), //buttonTextStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
