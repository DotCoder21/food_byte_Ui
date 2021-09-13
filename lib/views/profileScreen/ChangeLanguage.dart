import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/widgets/buildAppBar.dart';
import 'package:get/get.dart';

class ChangeLanguage extends StatefulWidget {
  @override
  _ChangeLanguageState createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Change Language', color: kDarkTextColor),
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                height: Get.height * 0.06,
                width: Get.width,
                color: kTextColor.withOpacity(0.1),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Select Languages',
                    style: kTextStyle.copyWith(
                        color: kDarkTextColor, fontSize: 20),
                  ),
                ),
              ),
              ListTile(
                  leading: Text(
                    'Chines',
                    style: kTextStyle.copyWith(
                        color: isCheck ? kBlue : kDarkTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  trailing: InkWell(
                    onTap: () {
                      setState(() {
                        isCheck = !isCheck;
                      });
                    },
                    child: Container(
                        height: Get.height * 0.034,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isCheck ? kBlue : Colors.transparent,
                          border: Border.all(color: kTextColor),
                        ),
                        child: isCheck
                            ? Icon(
                                Icons.check,
                                size: 24,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.check_box_outline_blank,
                                size: 24,
                                color: Colors.white,
                              )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
