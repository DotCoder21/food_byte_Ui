import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/views/categoryScreen/itemCategories.dart';
import 'package:food_bytes/widgets/buildAppBar.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'Category',
        color: kDarkTextColor,
        actionIcon2: Icons.search,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.02,
        ),
        height: Get.height,
        // width: Get.width * 0.3,
        child: ListView.builder(
            itemCount: categoryModel.length,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, i) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: InkWell(
                  onTap: () {
                    Get.to(() => ItemCategories(
                          categoryModel[i].image,
                          categoryModel[i].color1,
                          categoryModel[i].color2,
                          categoryModel[i].title,
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(categoryModel[i].image),
                            fit: BoxFit.cover),
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
                                    categoryModel[i].color1.withOpacity(0.5),
                                    categoryModel[i].color2.withOpacity(0.5)
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topLeft)),
                          child: Center(
                            child: Text(
                              categoryModel[i].title,
                              style: kTextStyle.copyWith(
                                  color: Colors.white,
                                  fontSize: Get.height * 0.035,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
