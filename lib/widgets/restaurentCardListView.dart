import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/views/homeScreen/typeAndDistance.dart';
import 'package:food_bytes/views/profileScreen/editReviewScreen.dart';
import 'package:get/get.dart';

Padding restaurantCardListView(int i, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Container(
      height: Get.height * 0.31,
      width: Get.width * 0.86,
      decoration: BoxDecoration(
          // color: Colors.green,
          boxShadow: [
            BoxShadow(blurRadius: 2, spreadRadius: 1, color: Colors.black12),
          ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
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
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
            height: Get.height * 0.21,
            // width: Get.width,

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Material(
                    borderRadius: BorderRadius.circular(8),
                    elevation: 4,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        recipiesModel[i].option,
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Material(
                    borderRadius: BorderRadius.circular(8),
                    elevation: 4,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                                fontWeight: FontWeight.w600),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              // SizedBox(
              //   width: Get.width * 0.05,
              // ),
              // OverlapAvatar(
              //     insideRadius: 4,
              //     outSideRadius: 2,
              //     widthFactor: 0.5,
              //     itemCount: 2,
              //     backgroundImage:
              //         AssetImage('assets/images/pic1.png'),
              //     backgroundColor: Colors.white),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0)), //this right here
                            child: Container(
                              height: 200,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          Get.to(() => EditReviewScreen());
                                        },
                                        child: Text(
                                          'Edit',
                                          style: kTextStyle.copyWith(
                                              fontSize: 20,
                                              color: kDarkTextColor),
                                        )),
                                    Divider(
                                      color: Colors.grey,
                                      thickness: 1,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: Text('Delete',
                                          style: kTextStyle.copyWith(
                                              fontSize: 20,
                                              color: kDarkTextColor)),
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                      thickness: 1,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: Text('Cancel',
                                          style: kTextStyle.copyWith(
                                              fontSize: 20, color: kTextColor)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Icon(Icons.more_vert)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
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
  );
}
