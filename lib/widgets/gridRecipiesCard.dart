import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:get/get.dart';

Padding gridRecipesCard(
  int i,
  BuildContext context,
) {
  bool ischeck = false;
  return Padding(
    padding: const EdgeInsets.only(left: 5, right: 2),
    child: Container(
      height: Get.height * 0.32,
      width: Get.width * 0.4,
      decoration: BoxDecoration(
          // color: Colors.green,
          boxShadow: [
            BoxShadow(blurRadius: 2, spreadRadius: 1, color: Colors.black12),
          ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            height: Get.height * 0.16,
            // width: Get.width,

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(8),
                  elevation: 4,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(8))),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      recipiesModel[i].option,
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
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
                            size: Get.height * 0.024,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.favorite,
                            size: Get.height * 0.024,
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
          Container(
            padding: EdgeInsets.only(left: Get.width * 0.03),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      recipiesModel[i].title,
                      style: kTextStyle.copyWith(
                        fontSize: Get.height * 0.012,
                        fontWeight: FontWeight.w900,
                        color: kDarkTextColor,
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.04,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/star.png',
                          height: Get.height * 0.013,
                        ),
                        SizedBox(
                          width: Get.width * 0.01,
                        ),
                        Text(
                          recipiesModel[i].rating,
                          style: TextStyle(
                              fontSize: Get.height * 0.012,
                              color: kDarkTextColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    recipiesModel[i].subTitle,
                    style: kTextStyle.copyWith(
                      fontSize: Get.height * 0.01,
                      color: kTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
