import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_bytes/utils/appColors.dart';
import 'package:food_bytes/utils/appConst.dart';
import 'package:food_bytes/views/auth/sign_In.dart';
import 'package:food_bytes/widgets/background_Image.dart';
import 'package:food_bytes/widgets/customButton.dart';
import 'package:food_bytes/widgets/passwordInput.dart';
import 'package:food_bytes/widgets/textField.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/signUpimage.jpg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            //height: Get.height - 20,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  // Flexible(child: Container()),
                  Stack(
                    children: [
                      Center(
                        child: ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                            child: CircleAvatar(
                              radius: size.width * 0.14,
                              backgroundColor: Colors.grey[400].withOpacity(
                                0.4,
                              ),
                              child: Icon(
                                FontAwesomeIcons.user,
                                color: kWhite,
                                size: size.width * 0.1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: Get.height * 0.08,
                        left: Get.width * 0.56,
                        child: Container(
                          height: Get.width * 0.1,
                          width: Get.width * 0.1,
                          decoration: BoxDecoration(
                            color: kBlue,
                            shape: BoxShape.circle,
                            border: Border.all(color: kWhite, width: 2),
                          ),
                          child: Icon(
                            FontAwesomeIcons.arrowUp,
                            color: kWhite,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Get.width * 0.1,
                  ),
                  Column(
                    children: [
                      TextInputField(
                        icon: FontAwesomeIcons.user,
                        hint: 'User',
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next,
                      ),
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
                        inputAction: TextInputAction.next,
                      ),
                      PasswordInput(
                        icon: FontAwesomeIcons.lock,
                        hint: 'Confirm Password',
                        //  inputAction: TextInputAction.done,
                      ),
                      SizedBox(
                        height: Get.height * 0.035,
                      ),
                      RoundedButton(
                        onPress: () {},
                        buttonName: 'Register',
                      ),
                      SizedBox(
                        height: Get.height * 0.035,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account ? ',
                            style: kTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => SignInScreen());
                            },
                            child: Text(
                              'Login',
                              style: kTextStyle.copyWith(
                                  color: kBlue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.025,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
