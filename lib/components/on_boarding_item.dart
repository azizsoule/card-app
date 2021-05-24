import 'package:card_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {

 final String image;
 final String title;
 final String subtitle;

 OnboardingItem({this.title = "Title", this.subtitle = "Lorem Ipsum is simply dummy text of the printing and typesetting industry", this.image = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Image.asset(
            image
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Text(
            subtitle,
            style: TextStyle(
              color: AppColors.third,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
