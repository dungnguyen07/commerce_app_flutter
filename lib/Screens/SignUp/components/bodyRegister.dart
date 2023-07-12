import 'package:commerce_app/Screens/Login/components/background.dart';
// import 'package:commerce_app/Screens/Login/login_screen.dart';
import 'package:commerce_app/Screens/SignUp/components/divider.dart';
import 'package:commerce_app/Screens/SignUp/components/social_icon.dart';
import 'package:commerce_app/components/button_component.dart';
import 'package:commerce_app/components/inputfield_container.dart';
import 'package:commerce_app/components/textfield_container.dart';
import 'package:commerce_app/constants.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        reverse: true,
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'REGISTER',
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
              hintText: "Email",
              onChanged: (value) {},
            ),
            const TextFieldContainer(
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
                    hintText: "Password"),
              ),
            ),
            const TextFieldContainer(
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
                    hintText: "Confirm Password"),
              ),
            ),
            ButtonComponent(
              text: 'REGISTER',
              onPressed: () {
                // ignore: avoid_print
                print('REGISTER SUCCESS');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Have an Account? ",
                  style: TextStyle(color: Colors.white, fontSize: 16.5),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "login");
                  },
                  child: const Text(
                    " Sign In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: kButtonColor),
                  ),
                ),
              ],
            ),
            const OrDivide(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: "assets/icons/facebook.png",
                  onPressed: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.png",
                  onPressed: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google.png",
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
