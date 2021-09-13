import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/views/profileScreen/ChangeLanguage.dart';
import 'package:food_bytes/widgets/buildAppBar.dart';
import 'package:get/get.dart';

import 'ChangePassword.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Setting', color: kDarkTextColor),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15),
              height: Get.height * 0.05,
              width: Get.width,
              color: kTextColor.withOpacity(0.2),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Account',
                  style:
                      kTextStyle.copyWith(color: kDarkTextColor, fontSize: 20),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(() => ChangePassword());
              },
              leading: Text('Change Password',
                  style:
                      kTextStyle.copyWith(color: kDarkTextColor, fontSize: 20)),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                Get.to(() => ChangeLanguage());
              },
              leading: Text('Change Language',
                  style:
                      kTextStyle.copyWith(color: kDarkTextColor, fontSize: 20)),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Container(
              padding: EdgeInsets.only(top: 13, left: 15),
              height: Get.height * 0.05,
              width: Get.width,
              color: kTextColor.withOpacity(0.2),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Others',
                    style: kTextStyle.copyWith(
                        color: kDarkTextColor, fontSize: 20)),
              ),
            ),
            ListTile(
              leading: Text('Privacy Policy',
                  style:
                      kTextStyle.copyWith(color: kDarkTextColor, fontSize: 20)),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Text('Term and Conditions',
                  style:
                      kTextStyle.copyWith(color: kDarkTextColor, fontSize: 20)),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
