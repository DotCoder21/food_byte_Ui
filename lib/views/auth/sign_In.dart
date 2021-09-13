import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/views/auth/forgot.dart';
import 'package:food_bytes/views/auth/sign_Up.dart';
import 'package:food_bytes/widgets/background_Image.dart';
import 'package:food_bytes/widgets/customButton.dart';
import 'package:food_bytes/widgets/passwordInput.dart';
import 'package:food_bytes/widgets/textField.dart';
import 'package:get/get.dart';

import 'get_Start.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final passController = TextEditingController();

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          image: 'assets/images/login_bg.png',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Flexible(
                  child: Center(
                    child: Text(
                      'Foodybite',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.height * 0.07,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextInputField(
                      emailController: emailController,
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInput(
                      passController: passController,
                      icon: FontAwesomeIcons.lock,
                      hint: 'Password',
                      inputAction: TextInputAction.done,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => ForgotPassword());
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Forgot Password?',
                          style: kTextStyle.copyWith(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundedButton(
                      buttonName: 'Login',
                      onPress: () {
                        Get.to(() => GetStartScreen());
                      },
                    ),
                    SizedBox(
                      height: Get.height * 0.10,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => SignUpScreen());
                  },
                  child: Container(
                    child: Text(
                      'Create New Account',
                      style: kTextStyle,
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1, color: kWhite))),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.040,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
