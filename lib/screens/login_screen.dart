import 'package:card_app/components/button.dart';
import 'package:card_app/components/field.dart';
import 'package:card_app/controllers/login_screen_controller.dart';
import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:card_app/utils/text_styles.dart';
import 'package:card_app/utils/validators.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginScreenController controller = Get.put(LoginScreenController());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Constants.SCREEN_PADDING),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Bon retour parmi nous ${String.fromCharCode(Runes('\u{1F44B}👋👋👋👋👋').first)} !",
                style: TextStyles.noAppBarTitleStyle,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Je suis si content de te revoir. Tu peux te connecter pour gérer tes finances",
              style: TextStyle(color: AppColors.third, fontSize: 15),
            ),
            SizedBox(
              height: 30,
            ),
            Field(
              validator: Validators.notEmpty,
              textEditingController: controller.phoneController,
              hintText: "Numéro de téléphone",
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Field(
                    textEditingController: controller.passwordController,
                    validator: Validators.notEmpty,
                    hidden: true,
                    hintText: "Mot de passe",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                    ),
                    child: Icon(
                      Icons.fingerprint,
                      color: AppColors.primary,
                    ),
                  ),
                  onPressed: controller.onFingerPrintButtonPress,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text(
                    "Mot de passe oublié ?",
                    style: TextStyle(
                      color: AppColors.primary,
                    ),
                  ),
                  onPressed: controller.onForgotPasswordButtonPress,
                )),
            SizedBox(
              height: 80,
            ),
            Button(
              onPressed: controller.onLoginButtonPressed,
              text: 'Se connecter',
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                child: Text(
                  "Vous n'avez de compte ? inscrivez vous !",
                  style: TextStyle(
                    color: AppColors.primary,
                  ),
                ),
                onPressed: controller.onRegistrationButtonPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
