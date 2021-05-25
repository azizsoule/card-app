import 'package:card_app/components/button.dart';
import 'package:card_app/components/flat_button.dart';
import 'package:card_app/controllers/on_boarding_screen_controller.dart';
import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OnboardingScreenController controller =
        Get.put(OnboardingScreenController());
    return Scaffold(
      body: Stack(
        children: [

          Padding(
            padding: EdgeInsets.all(Constants.SCREEN_PADDING),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: PageView(
                      onPageChanged: controller.onPageChanged,
                      controller: controller.pageController,
                      children: controller.onBoardingItems,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment(0, 1),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: SmoothPageIndicator(
                      controller: controller.pageController,
                      count: controller.onBoardingItems.length,
                      axisDirection: Axis.horizontal,
                      onDotClicked: controller.onDotClick,
                      effect: ExpandingDotsEffect(
                        expansionFactor: 2,
                        spacing: 8,
                        dotWidth: 8.5,
                        dotHeight: 8.5,
                        dotColor: AppColors.third,
                        activeDotColor: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Obx(() {
                  if (controller.currentPage.value != controller.onBoardingItems.length-1)
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: FButton(
                            text: "Passer",
                            onPressed: controller.onSkip,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Button(
                            text: "Suivant",
                            icon: Icons.arrow_forward,
                            onPressed: controller.onNext,
                          ),
                        )
                      ],
                    );
                  else
                    return Row(
                      children: [
                        Expanded(
                          child: Button(
                            text: "Commençons",
                            icon: Icons.arrow_forward,
                            onPressed: controller.onLastSlideSeen,
                          ),
                        )
                      ],
                    );
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
