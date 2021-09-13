import 'package:flutter/material.dart';
import 'package:food_bytes/splashScreen.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
