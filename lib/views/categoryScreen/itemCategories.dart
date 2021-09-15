import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/widgets/restaurentCardListView.dart';
import 'package:get/get.dart';

class ItemCategories extends StatefulWidget {
  String image;
  Color color1;
  Color color2;
  String title;

  ItemCategories(
    this.image,
    this.color1,
    this.color2,
    this.title,
  );

  @override
  _ItemCategoriesState createState() => _ItemCategoriesState();
}

class _ItemCategoriesState extends State<ItemCategories> {
  int indicatorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height * 0.15,
                  width: Get.width,
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: Get.height * 0.15,
                  width: Get.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      widget.color1.withOpacity(0.5),
                      widget.color2.withOpacity(0.5)
                    ], begin: Alignment.bottomLeft, end: Alignment.topLeft),
                  ),
                  child: Center(
                    child: Text(
                      widget.title,
                      style: kTextStyle.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  top: 0,
                  left: 20,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                //  margin: EdgeInsets.only(left: Get.width * 0.02),
                height: Get.height,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemCount: recipiesModel.length,
                    itemBuilder: (context, i) {
                      return restaurantCardListView(i, context);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
