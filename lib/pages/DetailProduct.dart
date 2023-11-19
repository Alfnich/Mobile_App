import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pas_mobile/components/DetailProduct/ButtonProductInfo.dart';
import 'package:pas_mobile/components/DetailProduct/ProductInfo.dart';
import 'package:pas_mobile/theme.dart';
import 'package:pas_mobile/utils/ProductResponseModel.dart';

class DetailProduct extends StatelessWidget {
  final ProductResponseModel product;

  const DetailProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Produk",
          style: semibold14.copyWith(fontSize: 26),
        ),
      ),
      body: Stack(
        children: [ProductInfo(product: product), ButtonProductInfo(product: product)],
      ),
    );
  }
}
