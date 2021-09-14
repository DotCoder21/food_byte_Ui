import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/widgets/customAppBar.dart';
import 'package:food_bytes/widgets/displayTextField.dart';
import 'package:food_bytes/widgets/restaurentCardListView.dart';
import 'package:get/get.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class EditReviewScreen extends StatefulWidget {
  @override
  _EditReviewScreenState createState() => _EditReviewScreenState();
}

class _EditReviewScreenState extends State<EditReviewScreen> {
  var rating = 3.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                customAppBar(Icons.arrow_back_ios, 'Edit Review', 'Cancel'),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: displayTextField(
                    suffixIcon: Icon(
                      Icons.add_circle_outlined,
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
                Container(
                  margin: EdgeInsets.only(left: Get.width * 0.02),
                  height: Get.height * 0.31,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: recipiesModel.length,
                      itemBuilder: (context, i) {
                        return restaurantCardListView(i, context);
                      }),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  'Rating',
                  style: kTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: kDarkTextColor),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.height * 0.04,
                      vertical: Get.width * 0.03),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8)),
                  child: SmoothStarRating(
                    rating: rating,
                    isReadOnly: false,
                    color: Colors.yellow,
                    borderColor: Colors.grey,
                    size: 40,
                    filledIconData: Icons.star,
                    halfFilledIconData: Icons.star_half,
                    defaultIconData: Icons.star_border,
                    starCount: 5,
                    allowHalfRating: true,
                    spacing: 2.0,
                    onRated: (value) {
                      print("rating value -> $value");
                      // print("rating value dd -> ${value.truncate()}");
                    },
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  'Rate your Experience',
                  style: kTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: kDarkTextColor),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      border: Border.all(color: Colors.green.withOpacity(0.2)),
                      //color: Colors.green,
                      borderRadius: BorderRadius.circular(16)),
                  height: Get.height * 0.2,
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write your Experience..',
                          hintStyle: kTextStyle.copyWith(
                              fontSize: 20, color: kTextColor)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
