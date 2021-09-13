import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
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
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Container(
                  margin: EdgeInsets.only(left: Get.width * 0.02),
                  height: Get.height * 0.31,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: recipiesModel.length,
                      itemBuilder: (context, i) {
                        return restaurantCardListView(i);
                      }),
                ),
                SizedBox(
                  height: Get.height * 0.015,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: customTextRow('Category', 'See all (9)'),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Container(
                  margin: EdgeInsets.only(left: Get.width * 0.022),
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
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: customTextRow('Friends', 'See all (9)'),
                ),
                SizedBox(
                  height: Get.height * 0.01,
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
