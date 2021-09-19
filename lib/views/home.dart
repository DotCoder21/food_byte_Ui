import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/views/homeScreen/homeScreen.dart';
import 'package:food_bytes/views/myFavoriteScreen/myFavoriteScreen.dart';
import 'package:food_bytes/views/notificationScreen/notificatoinScreen.dart';
import 'package:food_bytes/views/profileScreen/editReviewScreen.dart';
import 'package:food_bytes/views/profileScreen/profileScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List _list = [
    HomeScreen(),
    MyFavoriteScreen(),
    NotificationScreen(),
    ProfileScreen(),
    EditReviewScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[index],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 40, color: Colors.black12, spreadRadius: 5)
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  color: index == 0 ? kNavIconColor : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/path.svg',
                  color: index == 1 ? kNavIconColor : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/notification.svg',
                  color: index == 2 ? kNavIconColor : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/profile.svg',
                  color: index == 3 ? kNavIconColor : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    index = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
