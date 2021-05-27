import 'package:card_app/controllers/user_space_controllers/card_screen_controller.dart';
import 'package:card_app/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardScreenController controller = Get.put(CardScreenController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestion des cartes", style: TextStyles.appBarTitleStyle,),
      ),
    );
  }
}
