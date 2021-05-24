import 'package:card_app/screens/registration_screen.dart';
import 'package:card_app/screens/user_space/user_space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  void onLoginButtonPressed() {
    Get.to(() => UserSpace());
  }

  void onRegistrationButtonPressed() {
    Get.to(() => RegistrationScreen());
  }

  void onFingerPrintButtonPress() {

  }

  void onForgotPasswordButtonPress() {

  }

}