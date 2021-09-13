import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/views/homeScreen/typeAndDistance.dart';
import 'package:food_bytes/widgets/buildAppBar.dart';
import 'package:food_bytes/widgets/displayTextField.dart';
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
        margin: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.02,
              ),
              displayTextField(
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            height: Get.height * 0.31,
                            width: Get.width * 0.86,
                            decoration: BoxDecoration(
                                // color: Colors.green,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      spreadRadius: 1,
                                      color: Colors.black12),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          recipiesModel[i].image,
                                        ),
                                      ),
                                      //color: Colors.red,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8))),
                                  height: Get.height * 0.21,
                                  // width: Get.width,

                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Material(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          elevation: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 5),
                                            child: Text(
                                              recipiesModel[i].option,
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Material(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          elevation: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 5),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/star.png',
                                                  height: Get.height * 0.019,
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.01,
                                                ),
                                                Text(
                                                  recipiesModel[i].rating,
                                                  style: TextStyle(
                                                      color: kDarkTextColor,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.02,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      recipiesModel[i].title,
                                      style: kTextStyle.copyWith(
                                        fontSize: Get.height * 0.02,
                                        fontWeight: FontWeight.w900,
                                        color: kDarkTextColor,
                                      ),
                                    ),
                                    typeAndDistance(
                                        color1: Color(0xffFF864D),
                                        color2: Color(0xffFF606B),
                                        title: recipiesModel[i].type,
                                        isGri: true),
                                    typeAndDistance(
                                        title: recipiesModel[i].distance,
                                        color: Color(0xff848DFF),
                                        isGri: false),
                                    SizedBox(
                                      width: Get.width * 0.05,
                                    ),
                                    // OverlapAvatar(
                                    //     insideRadius: 4,
                                    //     outSideRadius: 2,
                                    //     widthFactor: 0.5,
                                    //     itemCount: 2,
                                    //     backgroundImage:
                                    //         AssetImage('assets/images/pic1.png'),
                                    //     backgroundColor: Colors.white),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      recipiesModel[i].subTitle,
                                      style: kTextStyle.copyWith(
                                        fontSize: Get.height * 0.017,
                                        color: kTextColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
