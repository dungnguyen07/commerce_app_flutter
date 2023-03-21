import 'package:commerce_app/Screens/Login/components/background.dart';
import 'package:commerce_app/components/button_component.dart';
import 'package:commerce_app/components/inputfield_container.dart';
import 'package:commerce_app/components/textfield_container.dart';
import 'package:commerce_app/constants.dart';
import 'package:flutter/material.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: kButtonColor),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.2,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputfield(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            TextFieldContainer(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: kButtonColor,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: kButtonColor,
                    ),
                    border: InputBorder.none,
                    hintText: "Your Password"),
              ),
            ),
            ButtonComponent(
              text: 'LOGIN',
              onPressed: () {
                print('LOGIN SUCCESS');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account? ",
                  style: TextStyle(color: Colors.white, fontSize: 16.5),
                ),
                GestureDetector(
                  onTap: () {
                    print('Tapped');
                  },
                  child: Text(
                    " Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: kButtonColor),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
