import 'package:commerce_app/Screens/Welcome/components/background.dart';
import 'package:commerce_app/components/button_component.dart';
import 'package:commerce_app/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // Cung cấp tất cả chiều cao và chiều rộng của màn hình.
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'COMMERCE APP',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            ButtonComponent(
              text: 'LOGIN',
              onPressed: () {
                print('Login, Pressed');
              },
            ),
            ButtonComponent(
              text: 'SIGN UP',
              color: kPrimaryLightColor,
              textColor: Colors.black,
              onPressed: () {
                print('Sign up, Pressed');
              },
            )
          ],
        ),
      ),
    );
  }
}
