import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/widgets/buildAppBar.dart';
import 'package:food_bytes/widgets/customAppBar.dart';
import 'package:get/get.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'RatingScreen.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var rating = 3.0;
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: buildAppBar(
        title: 'Filter',
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            child: Text(
              'Reset',
              style: kTextStyle.copyWith(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            onPressed: () {
              Get.to(() => RatingScreen());
            },
          ),
          VerticalDivider(
            thickness: 0.1,
            color: Colors.white,
          ),
          Text(
            'Apply',
            style: kTextStyle.copyWith(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
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
          Text(
            'Select Category',
            style: kTextStyle.copyWith(
                fontSize: 24,
                color: kDarkTextColor,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          Wrap(
            spacing: 15.0,
            runSpacing: 12.0,
            children: <Widget>[
              _buildChip(
                'Italian',
              ),
              _buildChip('Chinese'),
              _buildChip(
                'Maxican',
              ),
              _buildChip(
                'Thai',
              ),
              _buildChip(
                'Arabian',
              ),
              _buildChip(
                'Pakistan',
              ),
              _buildChip(
                'American',
              ),
              _buildChip(
                'European',
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          Text(
            'Distance',
            style: kTextStyle.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: kDarkTextColor),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: kBlue,
              inactiveTrackColor: kBlue.withOpacity(0.2),
              trackShape: RoundedRectSliderTrackShape(),
              trackHeight: 5.0,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
              thumbColor: kBlue,
              overlayColor: Colors.blue.withAlpha(32),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
              tickMarkShape: RoundSliderTickMarkShape(),
              activeTickMarkColor: kBlue,
              inactiveTickMarkColor: kBlue.withOpacity(0.2),
              valueIndicatorShape: PaddleSliderValueIndicatorShape(),
              valueIndicatorColor: kBlue,
              valueIndicatorTextStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            child: Slider(
              value: _value,
              min: 0,
              max: 100,
              divisions: 10,
              label: '$_value',
              onChanged: (value) {
                setState(
                  () {
                    _value = value;
                  },
                );
              },
            ),
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
