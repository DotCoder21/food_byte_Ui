import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/widgets/buildAppBar.dart';
import 'package:food_bytes/widgets/displayTextField.dart';
import 'package:food_bytes/widgets/restaurentCardListView.dart';
import 'package:get/get.dart';

import '../homeScreen/homeDetailScreen.dart';

class TrendingRestaurant extends StatefulWidget {
  @override
  _TrendingRestaurantState createState() => _TrendingRestaurantState();
}

class _TrendingRestaurantState extends State<TrendingRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Trending Restaurents', color: Colors.black),
      body: Container(
        //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: displayTextField(
                  suffixIcon: Icon(
                    Icons.add_road,
                    color: kTextColor,
                    size: 25,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: kTextColor,
                    size: 30,
                  ),
                  labelText: 'Search',
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Container(
                // margin: EdgeInsets.symmetric(horizontal: 2),
                height: Get.height,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    // scrollDirection: Axis.vertical,
                    // physics: BouncingScrollPhysics(),
                    itemCount: recipiesModel.length,
                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: () {
                          Get.to(() => HomeDetailScreen());
                        },
                        child: restaurantCardListView(
                          i,
                          context,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
