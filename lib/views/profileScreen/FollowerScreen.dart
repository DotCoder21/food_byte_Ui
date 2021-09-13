import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/widgets/buildAppBar.dart';
import 'package:food_bytes/widgets/customerUserListTile.dart';
import 'package:get/get.dart';

class FollowerScreen extends StatefulWidget {
  @override
  _FollowerScreenState createState() => _FollowerScreenState();
}

class _FollowerScreenState extends State<FollowerScreen> {
  bool isFollower = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Followers', color: kDarkTextColor),
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
