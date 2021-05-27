import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OperationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.formFieldColor,
        borderRadius: BorderRadius.circular(Constants.APP_RADIUS),
        border: Border.all(color: AppColors.primary),
      ),
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(15)),
                child: Icon(
                  CupertinoIcons.creditcard_fill,
                  color: AppColors.secondary,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Netflix",
                    style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "4 mai 2021",
                    style: TextStyle(color: AppColors.third),
                  )
                ],
              ),
            ],
          ),
          Column(

            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "- XOF 200",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Souscription",
                style: TextStyle(color: AppColors.third),
              )
            ],
          ),
        ],
      ),
    );
  }
}
