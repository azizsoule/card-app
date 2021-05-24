import 'package:card_app/models/credit_card.dart';
import 'package:card_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  final int index;

  final CreditCard creditCard;

  CreditCardWidget({@required this.creditCard, this.index});

  @override
  Widget build(BuildContext context) {
    // if (index == 0)
      return Container(
        padding: EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width - 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.secondary,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.credit_card,
                      color: AppColors.primary,
                    ),
                    onPressed: () {},
                    tooltip: 'KYC',
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 15, top: 25, bottom: 10, right: 20),
                    child: Text(
                      'VISA',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Text(
                      '4562 1122 4595 7852',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                left: 15,
                                top: 25,
                                bottom: 10,
                                right: 20,
                              ),
                              child: Text(
                                'CARD HOLDER',
                                style: TextStyle(
                                  fontSize: 7,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 15,
                                top: 0,
                                bottom: 10,
                                right: 20,
                              ),
                              child: Text(
                                'Ghulam',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                left: 15,
                                top: 25,
                                bottom: 10,
                                right: 20,
                              ),
                              child: Text(
                                'Expiry Date',
                                style: TextStyle(
                                  fontSize: 7,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 15,
                                top: 0,
                                bottom: 10,
                                right: 20,
                              ),
                              child: Text(
                                '24/2020',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    // if (index == 1)
    //   return Container(
    //     padding: EdgeInsets.only(
    //       left: 5,
    //       right: 15,
    //     ),
    //     child: Container(
    //       height: 175,
    //       width: MediaQuery.of(context).size.width - 55,
    //       decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(20),
    //           gradient: LinearGradient(
    //             colors: [
    //               AppColors.primary,
    //               AppColors.secondary,
    //             ],
    //             begin: Alignment.topCenter,
    //             end: Alignment.centerRight,
    //           )),
    //       child: Column(
    //         children: [
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               IconButton(
    //                 icon: Icon(
    //                   Icons.credit_card,
    //                   color: AppColors.primary,
    //                 ),
    //                 onPressed: () {},
    //                 tooltip: 'KYC',
    //               ),
    //               Container(
    //                 padding: EdgeInsets.only(
    //                   left: 15,
    //                   top: 25,
    //                   bottom: 10,
    //                   right: 20,
    //                 ),
    //                 child: Text(
    //                   'VISA',
    //                   style: TextStyle(
    //                     fontSize: 20,
    //                     fontWeight: FontWeight.w700,
    //                     color: AppColors.secondary,
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Container(
    //                 padding: EdgeInsets.only(
    //                   left: 15,
    //                   top: 10,
    //                   bottom: 15,
    //                 ),
    //                 child: Text(
    //                   '4562 1122 4595 7852',
    //                   style: TextStyle(
    //                     fontSize: 18,
    //                     fontWeight: FontWeight.w600,
    //                     color: AppColors.primary,
    //                   ),
    //                 ),
    //               ),
    //               Container(
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Container(
    //                           padding: EdgeInsets.only(
    //                               left: 15, top: 25, bottom: 10, right: 20),
    //                           child: Text(
    //                             'CARD HOLDER',
    //                             style: TextStyle(
    //                               fontSize: 7,
    //                               fontWeight: FontWeight.w500,
    //                               color: AppColors.primary,
    //                             ),
    //                           ),
    //                         ),
    //                         Container(
    //                           padding: EdgeInsets.only(
    //                               left: 15, top: 0, bottom: 10, right: 20),
    //                           child: Text(
    //                             'Ghulam',
    //                             style: TextStyle(
    //                               fontSize: 20,
    //                               fontWeight: FontWeight.w700,
    //                               color: AppColors.primary,
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                     Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Container(
    //                           padding: EdgeInsets.only(
    //                               left: 15, top: 25, bottom: 10, right: 20),
    //                           child: Text(
    //                             'Expiry Date',
    //                             style: TextStyle(
    //                               fontSize: 20,
    //                               fontWeight: FontWeight.w700,
    //                               color: AppColors.primary,
    //                             ),
    //                           ),
    //                         ),
    //                         Container(
    //                           padding: EdgeInsets.only(
    //                               left: 15, top: 0, bottom: 10, right: 20),
    //                           child: Text(
    //                             '24/2020',
    //                             style: TextStyle(
    //                               fontSize: 20,
    //                               fontWeight: FontWeight.w700,
    //                               color: AppColors.primary,
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
  }
}
