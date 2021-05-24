import 'package:card_app/components/on_boarding_item.dart';
import 'package:card_app/screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingScreenController extends GetxController {

  PageController pageController = PageController(
    initialPage: 0
  );

  RxInt currentPage = 0.obs;

  List<Widget> onBoardingItems = [
    OnboardingItem(
      image: "assets/images/undraw_Credit_card_re_blml.png",
    ),
    OnboardingItem(
      image: "assets/images/undraw_online_payments_luau.png",
    ),
    OnboardingItem(
      image: "assets/images/undraw_personal_finance_tqcd.png",
    ),
  ];

  void onPageChanged(int i) {
    currentPage.value = i;
  }

  void onDotClick(int i) {
    currentPage.value = i;
    pageController.animateToPage(i, duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  void onSkip() {
    Get.to(() => WelcomeScreen());
  }

  void onNext() {
    onDotClick(currentPage.value+1);
  }

  void onLastSlideSeen() {
    onSkip();
  }

}