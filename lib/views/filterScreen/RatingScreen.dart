import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/widgets/buildAppBar.dart';
import 'package:get/get.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RatingScreen extends StatefulWidget {
  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  var rating = 3.0;
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'Rating',
        color: kDarkTextColor,
        actionIcon2: Icons.close,
      ),
      body: Column(
        children: [
          Flexible(
            flex: 10,
            child: firstPart(context),
          ),
          Flexible(
            flex: 1,
            child: secondPart(),
          ),
        ],
      ),
    );
  }

  Container secondPart() {
    return Container(
      decoration: BoxDecoration(
          color: kBlue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Center(
        child: Text(
          'Done',
          style: kTextStyle.copyWith(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Container firstPart(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: Get.width,
      child: Column(
        children: [
          SizedBox(
            height: Get.height * 0.03,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: Get.height * 0.04, vertical: Get.width * 0.03),
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
                    hintStyle:
                        kTextStyle.copyWith(fontSize: 20, color: kTextColor)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label) {
    return Chip(
      labelPadding: EdgeInsets.all(2.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      // avatar: CircleAvatar(
      //   backgroundColor: Colors.white70,
      //   child: Text(label[0].toUpperCase()),
      // ),
      label: Text(label,
          style: kTextStyle.copyWith(
              fontSize: 20, color: kTextColor, fontWeight: FontWeight.w600)),
      backgroundColor: Colors.transparent,
      elevation: 3.0,

      shadowColor: Colors.grey[100],
      padding: EdgeInsets.all(8.0),
    );
  }
}
