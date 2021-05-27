import 'package:card_app/components/credit_card_widget.dart';
import 'package:card_app/controllers/user_space_controllers/card_screen_controller.dart';
import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:card_app/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardScreenController controller = Get.put(CardScreenController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gestion des cartes",
          style: TextStyles.appBarTitleStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: Constants.CARDS_PAGE_VIEW_HEIGHT,
              child: PageView(
                controller: controller.pageController,
                children: List.generate(
                  5,
                      (index) => CreditCardWidget(),
                ),
              ),
            ),

            SmoothPageIndicator(
              controller: controller.pageController,
              onDotClicked: controller.onDotClicked,
              count: 5,
              effect: JumpingDotEffect(
                activeDotColor: AppColors.primary,
                dotColor: AppColors.formFieldColor,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),

            SizedBox(
              height: 20,
            ),



          ],
        ),
      ),
    );
  }
}
