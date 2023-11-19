import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pas_mobile/pages/Homepage.dart';
import 'package:pas_mobile/theme.dart';

class ButtonPayment extends StatelessWidget {
  const ButtonPayment({super.key});

  @override
  Widget build(BuildContext context) {
    void _completePayment() {
      Get.snackbar(
        'Payment Completed',
        'Your order is being processed.',
        backgroundColor: Colors.green,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 3),
      );

      Future.delayed(Duration(seconds: 3), () {
        Get.offAll(HomePage());
      });
    }

    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: _completePayment,
          child: Text(
            "Complete Payment",
            style: semibold14.copyWith(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            backgroundColor: const Color.fromARGB(255, 0, 30, 82),
          ),
        ),
      ),
    );
  }
}
