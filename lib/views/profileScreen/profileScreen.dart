import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/views/profileScreen/ReviewScreen.dart';
import 'package:food_bytes/views/profileScreen/reviewAndFollowerContainer.dart';
import 'package:food_bytes/views/profileScreen/settingScreen.dart';
import 'package:food_bytes/widgets/restaurentCardListView.dart';
import 'package:get/get.dart';

import 'FollowerScreen.dart';
import 'FollowingScreen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Get.width * 0.045),
          width: Get.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  'My Profile',
                  style: kTextStyle.copyWith(
                      color: kDarkTextColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                CircleAvatar(
                  radius: Get.height * 0.065,
                  backgroundImage: AssetImage('assets/images/person6.jpg'),
                ),
                Text(
                  'John Williams',
                  style: kTextStyle.copyWith(
                      color: kDarkTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'john.williams@gmail.com',
                  style: kTextStyle.copyWith(
                    color: kTextColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.to(() => ReviewScreen());
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (c) => ReviewScreen()));
                        },
                        child: reviewAndFollowerContainer('250', 'Review')),
                    Container(
                      height: Get.height * 0.05,
                      child: VerticalDivider(
                        color: kTextColor,
                        thickness: 0.7,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(() => FollowerScreen());
                        },
                        child: reviewAndFollowerContainer('250', 'Followers')),
                    Container(
                      height: Get.height * 0.05,
                      child: VerticalDivider(
                        color: kTextColor,
                        thickness: 0.7,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(() => FollowingScreen());
                        },
                        child: reviewAndFollowerContainer('250', 'Following')),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: Get.height * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(8),
                        color: kBlue,
                        elevation: 3,
                        child: Container(
                          height: Get.height * 0.07,
                          width: Get.width * 0.4,
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Edit Profile',
                              textAlign: TextAlign.center,
                              style: kTextStyle.copyWith(
                                  fontSize: Get.height * 0.025,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: kTextColor.withOpacity(0.3))),
                        child: FlatButton(
                            onPressed: () {
                              Get.to(() => SettingScreen());
                            },
                            child: Text(
                              'Settings',
                              style: kTextStyle.copyWith(
                                  color: kTextColor,
                                  fontSize: Get.height * 0.025,
                                  fontWeight: FontWeight.w600),
                            )),
                        height: Get.height * 0.07,
                        width: Get.width * 0.4,
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Container(
                  //  margin: EdgeInsets.only(left: Get.width * 0.02),
                  height: Get.height * 1,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      itemCount: recipiesModel.length,
                      itemBuilder: (context, i) {
                        return restaurantCardListView(i);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
