import 'package:flutter/material.dart';
import 'package:pas_mobile/components/payment/ButtonPayment.dart';
import 'package:pas_mobile/components/payment/DetailPayment.dart';
import 'package:pas_mobile/theme.dart';
import 'package:pas_mobile/utils/ProductResponseModel.dart';

class PaymentPage extends StatelessWidget {
  final ProductResponseModel product;

  const PaymentPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
          style: semibold14.copyWith(fontSize: 26),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DetailPayment(
              product: product,
              screenWidth: screenWidth,
              screenHeight: screenHeight),
          ButtonPayment(),
        ],
      ),
    );
  }
}
