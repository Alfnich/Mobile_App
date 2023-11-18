import 'package:flutter/material.dart';
import 'package:pas_mobile/theme.dart';

class AppBarCustomContent extends StatelessWidget {
  const AppBarCustomContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
        top: screenWidth < 600 ? 21 : 32,
        left: screenWidth < 600 ? 20 : 15,
        right: screenWidth < 600 ? 20 : 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome', style: bold18),
              Text('Fuad', style: semibold14)
            ],
          ),
          SizedBox(
            width: screenWidth < 600 ? 8 : 15,
          ),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/avatar.jpg'),
          ),
        ],
      ),
    );
  }
}
