import 'package:flutter/material.dart';
import 'package:pas_mobile/theme.dart';

class ProfileButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;

  const ProfileButton({
    required this.label,
    required this.onPressed,
    this.backgroundColor = Colors.blueAccent,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: semibold14.copyWith(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}
