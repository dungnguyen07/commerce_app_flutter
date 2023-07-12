import 'package:commerce_app/constants.dart';
import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final VoidCallback? onPressed;

  const ButtonComponent(
      {super.key,
      required this.text,
      this.color = kButtonColor,
      this.textColor = Colors.white,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 30))),
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(color: textColor, fontSize: 20),
            )),
      ),
    );
  }
}
