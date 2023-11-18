import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/components/homepage/CustomCarousel.dart';
import 'package:pas_mobile/components/homepage/Productcard.dart';
import 'package:pas_mobile/utils/ControllerListProduct.dart';

class ProductList extends StatelessWidget {
  final ControllerListProduct productController = Get.find();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Obx(() => productController.isLoading.value
          ? CircularProgressIndicator()
          : SingleChildScrollView(
              child: Column(
                children: [
                  CustomCarousel(),
                  Container(
                    height: screenHeight * 10.6,
                    child: Column(
                      children: [
                        for (int idx = 0;
                            idx <
                                (productController
                                            .productResponModelCtr.length /
                                        2)
                                    .ceil();
                            idx++)
                          Row(
                            children: [
                              Expanded(
                                child: ProductCard(
                                  product: productController
                                      .productResponModelCtr[idx * 2],
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: (idx * 2 + 1) <
                                        productController
                                            .productResponModelCtr.length
                                    ? ProductCard(
                                        product: productController
                                            .productResponModelCtr[idx * 2 + 1],
                                      )
                                    : Container(),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
    );
  }
}
