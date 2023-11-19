import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/components/CustomBottomNavbar.dart';
import 'package:pas_mobile/components/homepage/CustomAppBar.dart';
import 'package:pas_mobile/components/homepage/ProductList.dart';
import 'package:pas_mobile/utils/ControllerListProduct.dart';

class HomePage extends StatelessWidget {
  final ControllerListProduct productController =
      Get.put(ControllerListProduct());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ProductList(),
      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: 0),
    );
  }
}
