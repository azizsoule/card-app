import 'package:card_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  final String cardNumber;
  final String expDate;
  final String abrevBankName;
  final String bankCompleteName;
  final String amount;

  CreditCardWidget({
    this.abrevBankName = "UBA",
    this.bankCompleteName = "United Bank of Africa",
    this.cardNumber = "**** **** **** 1234",
    this.expDate = "12 / 2022",
    this.amount = "1 600",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(
        Constants.SCREEN_PADDING,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Constants.APP_RADIUS),
        gradient: LinearGradient(
          colors: [Color(0xff323232), Color(0xff000000)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                abrevBankName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              Text(
                '|',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 10,
                  fontSize: 10,
                ),
              ),
              Text(
                bankCompleteName,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),

          Text(
            cardNumber,
            style: TextStyle(
              color: Colors.grey[300],
              fontSize: 18,
              wordSpacing: 15,
              shadows: [
                BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 2,
                  color: Colors.black,
                  offset: Offset(2, 2),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                expDate,
                style: TextStyle(color: Colors.grey),
              ),
              Image.asset(
                'assets/images/chip.png',
                height: 25,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "$amount F CFA",
            style: TextStyle(
              color: Colors.grey[300],
              fontSize: 18,
              wordSpacing: 3,
              fontWeight: FontWeight.bold,
              shadows: [
                BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 2,
                  color: Colors.black,
                  offset: Offset(2, 2),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
