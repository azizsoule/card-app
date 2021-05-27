import 'package:awesome_card/awesome_card.dart';
import 'package:card_app/components/action_widget.dart';
import 'package:card_app/components/credit_card_widget.dart';
import 'package:card_app/components/operation_widget.dart';
import 'package:card_app/controllers/user_space_controllers/home_screen_controller.dart';
import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeScreenController controller = Get.put(HomeScreenController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: Constants.SCREEN_PADDING,
                      right: Constants.SCREEN_PADDING,
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.secondary,
                              foregroundImage: NetworkImage(
                                  "https://img.icons8.com/color/48/000000/circled-user-male-skin-type-6--v2.png"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Salut !",
                                  style: TextStyle(
                                    color: AppColors.primary,
                                  ),
                                ),
                                Text(
                                  "Aziz Soulé",
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: Constants.CARDS_PAGE_VIEW_HEIGHT,
                    child: PageView(
                      controller: controller.pageController,
                      children: List.generate(
                        controller.creditCards.length,
                            (index) => CreditCardWidget(),
                      ),
                    ),
                  ),

                  SmoothPageIndicator(
                    controller: controller.pageController,
                    count: controller.creditCards.length,
                    effect: JumpingDotEffect(
                      activeDotColor: AppColors.primary,
                      dotColor: AppColors.formFieldColor,
                      dotHeight: 8,
                      dotWidth: 8,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ActionWidget(
                    onTap: controller.onSendMoneyButtonTap,
                    iconData: Icons.send,
                    text: "Envoyer de l'argent",
                  ),
                  ActionWidget(
                    onTap: controller.onRechargeButtonTap,
                    iconData: CupertinoIcons.money_dollar_circle_fill,
                    text: "Recharger sa carte",
                  ),
                  ActionWidget(
                    onTap: controller.onAddCardButtonTap,
                    iconData: CupertinoIcons.creditcard_fill,
                    text: "Ajouter une carte",
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transactions récentes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Voir +",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: List.generate(
                5,
                    (index) => Padding(
                  padding: EdgeInsets.only(
                    left: Constants.SCREEN_PADDING,
                    right: Constants.SCREEN_PADDING,
                  ),
                  child: OperationWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
