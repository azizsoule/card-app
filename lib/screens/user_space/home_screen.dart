import 'package:awesome_card/awesome_card.dart';
import 'package:card_app/components/action_widget.dart';
import 'package:card_app/components/operation_widget.dart';
import 'package:card_app/controllers/user_space_controllers/home_screen_controller.dart';
import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeScreenController controller = Get.put(HomeScreenController());
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.primary,
            Colors.red,
            // AppColors.primary.withOpacity(0.7),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    color: AppColors.secondary,
                                  ),
                                ),
                                Text(
                                  "Aziz Soulé",
                                  style: TextStyle(
                                    color: AppColors.secondary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(
                            CupertinoIcons.bell_solid,
                            color: AppColors.secondary,
                          ),
                          onPressed: controller.onNotificationButtonPress,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        controller.creditCards.length,
                        (index) => CreditCard(
                          backBackground: CardBackgrounds.black,
                          frontBackground: CardBackgrounds.black,
                          frontTextColor: AppColors.secondary,
                          showBackSide: false,
                          bankName: "UBA",
                          cardExpiry: "2023",
                          cardNumber: "1234 5678 9123 7878",
                          textName: "XOF 200 000",
                          cardType: CardType.visa,
                          showShadow: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.5,
              maxChildSize: 1,
              builder: (context, scrollController) => Container(
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
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
                              iconData: Icons.money,
                              text: "Recharger sa carte",
                            ),
                            ActionWidget(
                              onTap: controller.onAddCardButtonTap,
                              iconData: Icons.add,
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
                          10,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
