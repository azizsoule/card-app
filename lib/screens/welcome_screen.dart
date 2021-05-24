import 'package:card_app/components/button.dart';
import 'package:card_app/controllers/welcome_screen_controller.dart';
import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WelcomeScreenController controller = Get.put(WelcomeScreenController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(Constants.SCREEN_PADDING),
        child: Column(
          children: [
            Expanded(
                child: Image.asset("assets/images/undraw_unlock_24mb.png")),
            Container(
              child: Text(
                "Welcome on ${Constants.APP_NAME} !",
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Button(
              text: "Connexion",
              icon: Icons.login,
              textAndIconColor: AppColors.primary,
              backgroundColor: AppColors.secondary,
              borderColor: AppColors.primary,
              onPressed: controller.onLoginButtonPressed,
            ),
            SizedBox(
              height: 20,
            ),
            Button(
              icon: Icons.app_registration,
              text: "Inscription",
              onPressed: controller.onRegistrationButtonPressed,
            ),
          ],
        ),
      ),
    );
  }
}
