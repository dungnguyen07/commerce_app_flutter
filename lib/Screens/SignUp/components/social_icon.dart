import 'package:commerce_app/constants.dart';
import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final VoidCallback? onPressed;
  const SocialIcon({
    super.key,
    required this.iconSrc,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 2, color: kPrimaryLightColor),
            shape: BoxShape.circle),
        child: Image.asset(
          iconSrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
