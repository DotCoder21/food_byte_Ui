import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_bytes/Data/data.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhite,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.03,
              ),
              Text(
                'Notifications',
                style: kTextStyle.copyWith(
                    fontSize: Get.height * 0.025,
                    fontWeight: FontWeight.bold,
                    color: kDarkTextColor),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      itemCount: notificationModel.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                child: Image.asset(
                                  notificationModel[i].image!,
                                  width: Get.width * 0.16,
                                ),
                              ),
                            ),
                            // CircleAvatar(
                            //   backgroundImage: AssetImage(
                            //     notificationModel[i].image,
                            //   ),
                            //   radius: 30,
                            // ),
                            title: Text(
                              notificationModel[i].title!,
                              style: kTextStyle.copyWith(
                                  fontSize: Get.height * 0.02,
                                  fontWeight: FontWeight.bold,
                                  color: kDarkTextColor),
                            ),
                            subtitle: Text(
                              notificationModel[i].subtitle!,
                              style: kTextStyle.copyWith(
                                  fontSize: Get.height * 0.02,
                                  fontWeight: FontWeight.bold,
                                  color: kTextColor),
                            ),
                            trailing: Text(
                              notificationModel[i].time!,
                              style: kTextStyle.copyWith(
                                  fontSize: Get.height * 0.018,
                                  fontWeight: FontWeight.bold,
                                  color: kTextColor),
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
