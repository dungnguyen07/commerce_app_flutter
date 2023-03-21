import 'package:commerce_app/components/textfield_container.dart';
import 'package:commerce_app/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputfield extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputfield({
    super.key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kButtonColor,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
