// File: product_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/pages/DetailProduct.dart';
import 'package:pas_mobile/theme.dart';
import 'package:pas_mobile/utils/ProductResponseModel.dart';

class ProductCard extends StatelessWidget {
  final ProductResponseModel product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Get.to(() => DetailProduct(product: product));
      },
      child: Container(
        height: screenWidth * 0.65,
        margin: EdgeInsets.all(10),
        child: Card(
          elevation: 3,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (product.imageLink != null)
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.network(
                    product.imageLink!,
                    height: screenWidth * 0.4,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: screenWidth * 0.05,
                      child: Text(product.name, style: semibold14),
                    ),
                    SizedBox(height: 5),
                    Text("\$${product.price}",
                        style: bold18.copyWith(
                            color: const Color.fromARGB(255, 0, 30, 82))),
                    RatingBar.builder(
                      initialRating: product.rating ?? 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      ignoreGestures: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                      itemSize: 20,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 255, 217, 78),
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
