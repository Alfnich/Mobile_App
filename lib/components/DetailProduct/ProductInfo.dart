import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pas_mobile/theme.dart';
import 'package:pas_mobile/utils/ProductResponseModel.dart';

class ProductInfo extends StatelessWidget {
  final ProductResponseModel product;

  const ProductInfo({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              product.imageLink,
              height: screenHeight * 0.3,
              width: double.infinity,
            ),
          ),
          Container(
            width: screenWidth * 0.7,
            child: Text(
              product.name,
              style: bold16.copyWith(fontSize: 20),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Text(
            product.brand,
            style: semibold12_5.copyWith(color: Colors.black87),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          RatingBar.builder(
            initialRating: product.rating ?? 0,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
            itemSize: 30,
            ignoreGestures: true,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
            },
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: bold18,
              ),
              Text(
                product.description,
                style: regular14,
              )
            ],
          ),
        ],
      ),
    );
  }
}
