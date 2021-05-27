import 'package:card_app/components/setting_item.dart';
import 'package:card_app/controllers/user_space_controllers/settings_screen_controller.dart';
import 'package:card_app/utils/constants.dart';
import 'package:card_app/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingsScreenController controller = Get.put(SettingsScreenController());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Constants.SCREEN_PADDING),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Paramètres",
              style: TextStyles.noAppBarTitleStyle,
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              "Compte",
              style: TextStyles.appBarTitleStyle,
            ),

            SizedBox(
              height: 15,
            ),

            SettingItem(
              title: "Aziz Soulé",
              subtitle: "informations personnelles",
            ),

            SizedBox(
              height: 30,
            ),

            Text(
              "Paramètres",
              style: TextStyles.appBarTitleStyle,
            ),

            SizedBox(
              height: 15,
            ),

            Column(
              children: List.generate(5, (index) => Padding(
                padding: EdgeInsets.only(
                  bottom: 20
                ),
                child: SettingItem(
                  title: "Paramètre $index",
                ),
              ),),
            )
          ],
        ),
      ),
    );
  }
}
