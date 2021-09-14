import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/widgets/buildAppBar.dart';
import 'package:food_bytes/widgets/restaurentCardListView.dart';
import 'package:get/get.dart';

class MyFavoriteScreen extends StatefulWidget {
  @override
  _MyFavoriteScreenState createState() => _MyFavoriteScreenState();
}

class _MyFavoriteScreenState extends State<MyFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          title: 'My Favorite',
          color: kDarkTextColor,
          actionIcon2: Icons.search),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.01,
              ),
              Container(
                margin: EdgeInsets.only(left: Get.width * 0.02),
                height: Get.height * 1,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemCount: recipiesModel.length,
                    itemBuilder: (context, i) {
                      return restaurantCardListView(i, context);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
