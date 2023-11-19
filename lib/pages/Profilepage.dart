import 'package:flutter/material.dart';
import 'package:pas_mobile/components/CustomBottomNavbar.dart';
import 'package:pas_mobile/components/profile/DetailProfile.dart';
import 'package:pas_mobile/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Profile',
            style: semibold14.copyWith(fontSize: 26),
          ),
        ),
      ),
      body: DetailProfile(),
      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: 1),
    );
  }
}
