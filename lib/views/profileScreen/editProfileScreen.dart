import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/widgets/customAppBar.dart';
import 'package:food_bytes/widgets/customButton.dart';
import 'package:food_bytes/widgets/displayTextField.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: buildAppBar(
      //     title: 'Edit Profile',
      //     color: kDarkTextColor,
      //     title2: 'Cancel',
      //     titleColor: kTextColor),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            width: Get.width,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customAppBar(Icons.arrow_back_ios, 'Edit Profile', 'Cancel'),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/person7.jpg'),
                    ),
                    Positioned(
                      bottom: -2,
                      right: 4,
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            color: kBlue,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              'assets/icons/Path 433.svg',
                              height: Get.height * 0.03,
                            ),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                displayTextField(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SvgPicture.asset(
                        'assets/icons/profiles.svg',
                        height: Get.height * 0.04,
                        width: Get.width * 0.04,
                      ),
                    ),
                    labelText: 'John Williams'),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                displayTextField(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SvgPicture.asset(
                        'assets/icons/mail.svg',
                        height: Get.height * 0.033,
                        width: Get.width * 0.04,
                      ),
                    ),
                    labelText: 'John.williams@gmail.com'),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                RoundedButton(
                  buttonName: 'Update',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
