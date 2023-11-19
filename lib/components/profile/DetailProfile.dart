import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';
import 'package:pas_mobile/components/profile/ProfileButton.dart';
import 'package:pas_mobile/pages/Homepage.dart';
import 'package:pas_mobile/theme.dart';

class DetailProfile extends StatelessWidget {
  const DetailProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
            ),
            SizedBox(height: 16),
            Text(
              'Fuad',
              style: bold18,
            ),
            SizedBox(height: 16),
            Row(
              children: [
                ProfileButton(
                  label: 'Homepage',
                  onPressed: () => {Get.off(() => HomePage())},
                  backgroundColor: Colors.blueAccent,
                ),
                SizedBox(
                  width: 20,
                ),
                ProfileButton(
                  label: 'Logout',
                  onPressed: () => {Get.off(() => HomePage())},
                  backgroundColor: Color.fromARGB(255, 82, 0, 0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
