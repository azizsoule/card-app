import 'package:awesome_card/awesome_card.dart';
import 'package:card_app/components/credit_card_widget.dart';
import 'package:card_app/components/operation_widget.dart';
import 'package:card_app/controllers/user_space_controllers/operations_screen_controller.dart';
import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:card_app/utils/text_styles.dart';
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
        title: Text(
          "Transactions",
          style: TextStyles.appBarTitleStyle
        ),
      ),
      body: Scrollbar(
        radius: Radius.circular(100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Constants.CARDS_PAGE_VIEW_HEIGHT,
                child: PageView(
                  controller: controller.pageController,
                  children: List.generate(
                    3,
                    (index) => CreditCardWidget(),
                  ),
                ),
              ),

              SmoothPageIndicator(
                controller: controller.pageController,
                onDotClicked: controller.onDotClicked,
                count: 3,
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

              Padding(
                padding: EdgeInsets.only(
                  left: Constants.SCREEN_PADDING,
                  right: Constants.SCREEN_PADDING,
                  bottom: Constants.SCREEN_PADDING,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Du",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: controller.onDateChooserTap,
                              child: Container(
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
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("au",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: controller.onDateChooserTap,
                              child: Container(
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
                            ),
                          ),
                        ],
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
      ),
    );
  }
}
