import 'package:card_app/screens/login_screen.dart';
import 'package:card_app/screens/registration_screen.dart';
import 'package:get/get.dart';

class WelcomeScreenController extends GetxController {

  void onLoginButtonPressed() {
    Get.to(() => LoginScreen());
  }

  void onRegistrationButtonPressed() {
    Get.to(() => RegistrationScreen());
  }

}