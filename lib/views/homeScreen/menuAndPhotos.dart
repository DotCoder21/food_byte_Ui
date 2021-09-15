import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/views/homeScreen/preveiwScreen.dart';
import 'package:food_bytes/widgets/buildAppBar.dart';
import 'package:get/get.dart';

class MenuAndPhotos extends StatefulWidget {
  @override
  _MenuAndPhotosState createState() => _MenuAndPhotosState();
}

class _MenuAndPhotosState extends State<MenuAndPhotos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Menu and Photos', color: kDarkTextColor),
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.04, vertical: Get.width * 0.02),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) => InkWell(
            onTap: () {
              Get.to(() => PreViewScreen(images[index]));
            },
            child: new Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                //color: Colors.green,
                child: Image.asset(
                  images[index],
                  height: Get.height,
                  width: Get.width,
                  fit: BoxFit.cover,
                )),
          ),
          staggeredTileBuilder: (int index) =>
              new StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
        ),
      ),
    );
  }
}
