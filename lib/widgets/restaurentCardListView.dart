import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/views/homeScreen/typeAndDistance.dart';
import 'package:food_bytes/views/profileScreen/editReviewScreen.dart';
import 'package:get/get.dart';

Widget restaurantCardListView(
  int i,
  BuildContext context,
) {
  bool ischeck = false;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                    recipiesModel[i].image!,
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
                Material(
                  borderRadius: BorderRadius.circular(8),
                  elevation: 0.2,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                            topLeft: Radius.circular(8))),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      recipiesModel[i].option!,
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ischeck
                        ? Icon(
                            Icons.favorite_border,
                            size: Get.height * 0.034,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.favorite,
                            size: Get.height * 0.034,
                            color: Colors.red,
                          ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                recipiesModel[i].title!,
                style: kTextStyle.copyWith(
                  fontSize: Get.height * 0.02,
                  fontWeight: FontWeight.w900,
                  color: kDarkTextColor,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/star.png',
                    height: Get.height * 0.015,
                  ),
                  SizedBox(
                    width: Get.width * 0.01,
                  ),
                  Text(
                    recipiesModel[i].rating!,
                    style: TextStyle(
                        fontSize: Get.height * 0.014,
                        color: kDarkTextColor,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              typeAndDistance(
                  color1: Color(0xffFF864D),
                  color2: Color(0xffFF606B),
                  title: recipiesModel[i].type,
                  isGri: true),
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
                                      color: Colors.grey.withOpacity(0.3),
                                      thickness: 1,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Dialog(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0)), //this right here
                                                child: Container(
                                                  height: 200,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                            'Are you Sure you want to\ndelete the post?',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: kTextStyle.copyWith(
                                                                fontSize: 20,
                                                                color:
                                                                    kDarkTextColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600)),
                                                        SizedBox(
                                                          height:
                                                              Get.height * 0.03,
                                                        ),
                                                        Divider(
                                                          color: Colors.grey
                                                              .withOpacity(0.3),
                                                          thickness: 1,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            TextButton(
                                                                onPressed: () {
                                                                  //  Get.to(() => SignUpScreen());
                                                                },
                                                                child: Text(
                                                                  'Yes',
                                                                  style: kTextStyle
                                                                      .copyWith(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              kBlue),
                                                                )),
                                                            VerticalDivider(
                                                              color:
                                                                  Colors.grey,
                                                              thickness: 2,
                                                            ),
                                                            TextButton(
                                                              onPressed: () {
                                                                Get.back();
                                                              },
                                                              child: Text('No',
                                                                  style: kTextStyle
                                                                      .copyWith(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              kBlue)),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            });
                                      },
                                      child: Text('Delete',
                                          style: kTextStyle.copyWith(
                                              fontSize: 20,
                                              color: kDarkTextColor)),
                                    ),
                                    Divider(
                                      color: Colors.grey.withOpacity(0.3),
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
                recipiesModel[i].subTitle!,
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
