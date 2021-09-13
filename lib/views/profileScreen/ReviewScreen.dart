import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/widgets/buildAppBar.dart';
import 'package:food_bytes/widgets/ratingContainer.dart';
import 'package:get/get.dart';

class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Review', color: kDarkTextColor),
      body: Container(
        width: Get.width,
        height: Get.height * 1,
        child: ListView.builder(
            itemCount: reviewModel.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: Get.width,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        reviewModel[i].image,
                      ),
                      radius: 30,
                    ),
                    title: Text(
                      reviewModel[i].name,
                      style: kTextStyle.copyWith(
                          fontSize: Get.height * 0.02,
                          fontWeight: FontWeight.bold,
                          color: kDarkTextColor),
                    ),
                    subtitle: Text(
                      reviewModel[i].title,
                      style: kTextStyle.copyWith(
                          fontSize: Get.height * 0.02,
                          fontWeight: FontWeight.bold,
                          color: kTextColor),
                    ),
                    trailing: Container(
                        width: Get.width * 0.16,
                        child: ratingContainer(reviewModel[i].rating)),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
