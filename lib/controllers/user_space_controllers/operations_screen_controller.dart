import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OperationsScreenController extends GetxController {
  PageController pageController = PageController(
    initialPage: 0,
  );

  DateTime startDate;

  DateTime endDate;

  void onDateChooserTap() async {
    DateTime choosedDate = await showDatePicker(
      context: Get.context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000,1,1),
      lastDate: DateTime.now(),
    );
  }

  void onDotClicked(int i) {}
}
