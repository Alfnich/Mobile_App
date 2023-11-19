import 'package:flutter/material.dart';
import 'package:pas_mobile/theme.dart';
import 'package:pas_mobile/utils/ProductResponseModel.dart';

class ProductInfoCard extends StatelessWidget {
  final ProductResponseModel product;
  final double screenWidth;
  final double screenHeight;

  ProductInfoCard({
    required this.product,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                product.imageLink,
                width: screenWidth * 0.2,
                height: screenHeight * 0.1,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              width: screenWidth * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: bold16,
                  ),
                  Text(
                    'Brand: ${product.brand}',
                    style: semibold12_5.copyWith(color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}