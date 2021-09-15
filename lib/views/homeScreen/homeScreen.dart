import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/views/categoryScreen/categoryScreen.dart';
import 'package:food_bytes/views/filterScreen/filterScreen.dart';
import 'package:food_bytes/views/trendingRestaurants/trendingRestaurants.dart';
import 'package:food_bytes/widgets/displayTextField.dart';
import 'package:food_bytes/widgets/restaurentCardListView.dart';
import 'package:get/get.dart';

import 'customTextRow.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffFFFFFF),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            //  margin: EdgeInsets.symmetric(horizontal: 20),
            height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: displayTextField(
                    suffixIcon: InkWell(
                      onTap: () {
                        Get.to(() => FilterScreen());
                      },
                      child: Icon(
                        Icons.add_road,
                        color: kTextColor,
                        size: 25,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: kTextColor,
                      size: 30,
                    ),
                    labelText: 'Find Restaurant',
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                      onTap: () {
                        Get.to(() => TrendingRestaurant());
                      },
                      child:
                          customTextRow('Trending Restaurant', 'See all (45)')),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: Get.width * 0.02,
                      top: Get.height * 0.03,
                      bottom: Get.height * 0.015),
                  height: Get.height * 0.31,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: recipiesModel.length,
                      itemBuilder: (context, i) {
                        return restaurantCardListView(i, context);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                      onTap: () {
                        Get.to(() => CategoryScreen());
                      },
                      child: customTextRow('Category', 'See all (9)')),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: Get.width * 0.022, top: Get.height * 0.01),
                  height: Get.height * 0.13,
                  // width: Get.width * 0.3,
                  child: ListView.builder(
                      itemCount: categoryModel.length,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(categoryModel[i].image),
                                    fit: BoxFit.fill),
                                // color: Colors.black12,
                                borderRadius: BorderRadius.circular(8)),
                            height: Get.height * 0.13,
                            width: Get.width * 0.3,
                            child: Stack(
                              children: [
                                Container(
                                  height: Get.height,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      gradient: LinearGradient(
                                          colors: [
                                            categoryModel[i]
                                                .color1
                                                .withOpacity(0.5),
                                            categoryModel[i]
                                                .color2
                                                .withOpacity(0.5)
                                          ],
                                          begin: Alignment.bottomLeft,
                                          end: Alignment.topLeft)),
                                  child: Center(
                                    child: Text(
                                      categoryModel[i].title,
                                      style: kTextStyle.copyWith(
                                          color: Colors.white,
                                          fontSize: Get.height * 0.025,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: customTextRow('Friends', 'See all (9)'),
                ),
                Container(
                  height: Get.height * 0.07,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: avatarModel.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(
                              avatarModel[i],
                            ),
                          ),
                        );
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
