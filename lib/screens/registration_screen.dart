import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(Constants.SCREEN_PADDING),
        child: Column(
          children: [
            Container(
              child: Text(
                "Creer un nouveau compte",
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Creez un compte et ainsi vous pourrez gérer vos différentes cartes de crédit aisément",
              style: TextStyle(color: AppColors.third, fontSize: 15),
            ),
            SizedBox(
              height: 30,
            ),

          ],
        ),
      ),
    );
  }
}
