import 'package:flutter/material.dart';

class OrDivide extends StatelessWidget {
  const OrDivide({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
          ),
          Text(
            'OR',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
        child: Divider(
      color: Colors.white,
      height: 1.7,
    ));
  }
}
