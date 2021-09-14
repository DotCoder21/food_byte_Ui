import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/views/auth/sign_Up.dart';
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
                  style: kTextStyle.copyWith(color: kTextColor, fontSize: 20),
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
              padding: EdgeInsets.only(left: 15),
              height: Get.height * 0.05,
              width: Get.width,
              color: kTextColor.withOpacity(0.2),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Other',
                  style: kTextStyle.copyWith(color: kTextColor, fontSize: 20),
                ),
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
            ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20.0)), //this right here
                        child: Container(
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Are you Sure you want to\nLog out?',
                                    textAlign: TextAlign.center,
                                    style: kTextStyle.copyWith(
                                        fontSize: 20,
                                        color: kDarkTextColor,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: Get.height * 0.03,
                                ),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 1,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          Get.to(() => SignUpScreen());
                                        },
                                        child: Text(
                                          'Yes',
                                          style: kTextStyle.copyWith(
                                              fontSize: 20, color: kBlue),
                                        )),
                                    VerticalDivider(
                                      color: Colors.grey,
                                      thickness: 2,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: Text('No',
                                          style: kTextStyle.copyWith(
                                              fontSize: 20, color: kBlue)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });

                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) {
                //     return AlertDialog(
                //       title: Text("Alert Dialog"),
                //       content: Text("Dialog Content"),
                //     );
                //   },
                //   actions: [
                //     // ignore: deprecated_member_use
                //     FlatButton(
                //       child: Text("Close"),
                //       onPressed: () {
                //         Navigator.of(context).pop();
                //       },
                //     )
                //   ],
                // );
                // Get.defaultDialog(
                //   title: 'Are you want to log out',
                //   textCustom: 'Yes',
                //   textCancel: 'No',
                //   onConfirm: () {
                //     Get.back();
                //   },
                //   onCancel: () {
                //     Get.to(() => SignUpScreen());
                //   },
                // );
              },
              leading: Text('Log Out',
                  style: kTextStyle.copyWith(color: kBlue, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
