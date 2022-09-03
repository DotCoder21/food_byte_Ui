import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/views/homeScreen/menuAndPhotos.dart';
import 'package:food_bytes/views/homeScreen/typeAndDistance.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../../widgets/ratingContainer.dart';
import 'customTextRow.dart';

class HomeDetailScreen extends StatefulWidget {
  @override
  _HomeDetailScreenState createState() => _HomeDetailScreenState();
}

class _HomeDetailScreenState extends State<HomeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            // color: Colors.red,
            // color: Colors.green,
            // height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                Container(
                  height: Get.height * 0.35,
                  color: Colors.green,
                  child: Stack(
                    children: [
                      ShaderMask(
                        shaderCallback: (rect) => LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.center,
                          colors: [Colors.black45, Colors.white],
                        ).createShader(rect),
                        blendMode: BlendMode.darken,
                        child: Container(
                          height: Get.height * 0.35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/Recipe1.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black12, BlendMode.darken),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: Get.height * 0.03,
                        left: Get.width * 0.05,
                        right: Get.width * 0.05,
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 25,
                            ),
                            Spacer(),
                            Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(
                              width: Get.width * 0.04,
                            ),
                            Icon(
                              Icons.payment,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: GlassmorphicContainer(
                            blur: 3,
                            border: 10,
                            width: Get.width * 0.86,
                            height: Get.height * 0.06,
                            borderRadius: 40,
                            borderGradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Colors.white54.withOpacity(0.01),
                                  Colors.white54.withOpacity(0.01),
                                ]),
                            linearGradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Colors.white70.withOpacity(0.1),
                                  Colors.white70.withOpacity(0.1),
                                ]),
                            child: Container(
                              decoration: BoxDecoration(
                                  // color: Colors.white38,
                                  borderRadius: BorderRadius.circular(40)),
                              height: Get.height * 0.06,
                              width: Get.width * 0.85,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/images/phone.svg',
                                          height: Get.height * 0.04,
                                          width: Get.width * 0.04,
                                          //color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: Get.width * 0.02,
                                        ),
                                        Text(
                                          '+12424532',
                                          style: kTextStyle.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                  VerticalDivider(
                                    color: Colors.white,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/images/twoarrows.svg',
                                          height: Get.height * 0.04,
                                          width: Get.width * 0.04,
                                        ),
                                        SizedBox(
                                          width: Get.width * 0.02,
                                        ),
                                        Text(
                                          'Direction',
                                          style: kTextStyle.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Happy Bones',
                            style: kTextStyle.copyWith(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          typeAndDistance(
                              color1: Color(0xffFF864D),
                              color2: Color(0xffFF606B),
                              title: 'Italian',
                              isGri: true),
                          typeAndDistance(
                              title: '12 km',
                              color: Color(0xff848DFF),
                              isGri: false),
                          ratingContainer('2.4'),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '394 Broome St, New York, NY 10013, USA',
                            style: kTextStyle.copyWith(
                              fontSize: Get.height * 0.017,
                              color: kTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          // SizedBox(
                          //   height: Get.height * 0.01,
                          // ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Open Now ',
                                  style: kTextStyle.copyWith(
                                    fontSize: Get.height * 0.017,
                                    color: kRedTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'daily time ',
                                  style: kTextStyle.copyWith(
                                    fontSize: Get.height * 0.017,
                                    color: kTextColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: '9:30 am to 11:00 pm',
                                  style: kTextStyle.copyWith(
                                    fontSize: Get.height * 0.017,
                                    color: kRedTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          InkWell(
                              onTap: () {
                                Get.to(() => MenuAndPhotos());
                              },
                              child: customTextRow(
                                  'Menu and Photos', 'See all (12)')),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
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
                                    image: AssetImage(categoryModel[i].image!),
                                    fit: BoxFit.fill),
                                // color: Colors.black12,
                                borderRadius: BorderRadius.circular(8)),
                            height: Get.height * 0.13,
                            width: Get.width * 0.4,
                            child: Stack(
                              children: [
                                Container(
                                  height: Get.height,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    // gradient: LinearGradient(
                                    //     colors: [
                                    //       categoryModel[i]
                                    //           .color1
                                    //           .withOpacity(0.5),
                                    //       categoryModel[i]
                                    //           .color2
                                    //           .withOpacity(0.5)
                                    //     ],
                                    //     begin: Alignment.bottomLeft,
                                    //     end: Alignment.topLeft)),
                                  ),
                                  // child: Center(
                                  //   child: Text(
                                  //     categoryModel[i].title,
                                  //     style: kTextStyle.copyWith(
                                  //         color: Colors.white,
                                  //         fontSize: Get.height * 0.025,
                                  //         fontWeight: FontWeight.bold),
                                  //   ),
                                  // ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.03,
                      vertical: Get.height * 0.02),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customTextRow('Review and Rating', 'See all (12)'),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Container(
                          //  height: Get.height,
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: customerReviewModel.length,
                              itemBuilder: (context, i) {
                                return ListTile(
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Container(
                                      child: Image.asset(
                                        customerReviewModel[i].image!,
                                        width: Get.width * 0.16,
                                      ),
                                    ),
                                  ),

                                  /* CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                      customerReviewModel[i].image,
                                    ),
                                  ),*/
                                  title: Text(
                                    customerReviewModel[i].name!,
                                    style: kTextStyle.copyWith(
                                        fontSize: Get.height * 0.018,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  subtitle: Text(
                                    customerReviewModel[i].title!,
                                    style: kTextStyle.copyWith(
                                        fontSize: Get.height * 0.02,
                                        color: kTextColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  trailing: Padding(
                                    padding: const EdgeInsets.only(bottom: 30),
                                    child: Container(
                                        width: Get.width * 0.16,
                                        child: ratingContainer(
                                            customerReviewModel[i].rating!)),
                                  ),
                                );
                              }),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
