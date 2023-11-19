import 'package:flutter/material.dart';
import 'package:pas_mobile/components/payment/ProductInfoCard.dart';
import 'package:pas_mobile/theme.dart';
import 'package:pas_mobile/utils/ProductResponseModel.dart';

class DetailPayment extends StatelessWidget {
  final ProductResponseModel product;
  final double screenWidth;
  final double screenHeight;

  DetailPayment({
    required this.product,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductInfoCard(
          product: product,
          screenWidth: screenWidth,
          screenHeight: screenHeight,
        ),
        SizedBox(height: 16),
        Text(
          'Payment Details',
          style: semibold14,
        ),
        SizedBox(height: 8),
        Text(
          'Total Amount: \$${product.price}',
          style: semibold14,
        ),
      ],
    );
  }
}
