import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/widgets/buildAppBar.dart';
import 'package:food_bytes/widgets/customerUserListTile.dart';
import 'package:get/get.dart';

class FollowingScreen extends StatefulWidget {
  @override
  _FollowingScreenState createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  bool isFollower = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Following', color: kDarkTextColor),
      body: Container(
        height: Get.height * 1,
        child: ListView.builder(
            itemCount: notificationModel.length,
            itemBuilder: (context, i) {
              return userFollowersListTiles(i, isFollower);
            }),
      ),
    );
  }
}
