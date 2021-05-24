import 'package:card_app/models/credit_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {

  PageController pageController = PageController(
    initialPage: 0
  );

  List<CreditCard> creditCards = [
    CreditCard(),
    CreditCard(),
    CreditCard()
  ];

  void onNotificationButtonPress() {

  }

  void onAddCardButtonTap() {

  }

  void onSendMoneyButtonTap() {

  }

  void onRechargeButtonTap() {

  }

}