import 'package:awesome_card/awesome_card.dart';
import 'package:card_app/components/operation_widget.dart';
import 'package:card_app/controllers/user_space_controllers/operations_screen_controller.dart';
import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OperationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OperationsScreenController controller =
        Get.put(OperationsScreenController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Historique des transactions",
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: PageView(
                controller: controller.pageController,
                children: List.generate(
                  3,
                  (index) => CreditCard(
                    frontBackground: CardBackgrounds.black,
                    backBackground: CardBackgrounds.black,
                    showBackSide: false,
                    cardType: CardType.visa,
                  ),
                ),
              ),
            ),
            SmoothPageIndicator(
              controller: controller.pageController,
              onDotClicked: controller.onDotClicked,
              count: 3,
              effect: JumpingDotEffect(
                activeDotColor: AppColors.primary,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: Constants.SCREEN_PADDING,
                right: Constants.SCREEN_PADDING,
                bottom: Constants.SCREEN_PADDING,
              ),
              child: Row(
                children: [
                  Text(
                    "Période",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                left: Constants.SCREEN_PADDING,
                right: Constants.SCREEN_PADDING,
                bottom: Constants.SCREEN_PADDING,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Du",style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primary,
                              style: BorderStyle.solid,
                            ),
                            color: AppColors.formFieldColor,
                            borderRadius:
                            BorderRadius.circular(Constants.APP_RADIUS),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("10/01/2021", textAlign: TextAlign.center,style: TextStyle(color: AppColors.primary,),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("au",style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primary,
                              style: BorderStyle.solid,
                            ),
                            color: AppColors.formFieldColor,
                            borderRadius:
                            BorderRadius.circular(Constants.APP_RADIUS),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("05/03/2021", textAlign: TextAlign.center,style: TextStyle(color: AppColors.primary,),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                left: Constants.SCREEN_PADDING,
                right: Constants.SCREEN_PADDING,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.green,
                            Colors.greenAccent,
                          ]
                        ),
                        borderRadius:
                            BorderRadius.circular(Constants.APP_RADIUS),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.secondary,
                            child: Icon(
                              Icons.arrow_downward,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Encaissés",
                            style: TextStyle(
                              color: AppColors.secondary,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "XOF 200 000",
                            style: TextStyle(
                                color: AppColors.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.redAccent,
                            Colors.red,
                          ]
                        ),
                        borderRadius:
                            BorderRadius.circular(Constants.APP_RADIUS),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.secondary,
                            child: Icon(
                              Icons.arrow_upward,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Dépensés",
                            style: TextStyle(
                              color: AppColors.secondary,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "XOF 200 000",
                            style: TextStyle(
                              color: AppColors.secondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: EdgeInsets.only(
                top: Constants.SCREEN_PADDING,
                left: Constants.SCREEN_PADDING,
                right: Constants.SCREEN_PADDING,
              ),
              child: Row(
                children: [
                  Text(
                    "Transactions",
                    style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(
                Constants.SCREEN_PADDING
              ),
              child: Column(
                children: List.generate(10, (index) => OperationWidget()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
