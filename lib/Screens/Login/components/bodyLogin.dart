import 'package:commerce_app/Screens/HomePage/homepage_screen.dart';
import 'package:commerce_app/Screens/Login/components/background.dart';
import 'package:commerce_app/Screens/SignUp/register_screen.dart';
import 'package:commerce_app/components/button_component.dart';
import 'package:commerce_app/components/inputfield_container.dart';
import 'package:commerce_app/components/textfield_container.dart';
import 'package:commerce_app/constants.dart';
import 'package:flutter/material.dart';

class BodyLogin extends StatefulWidget {
  const BodyLogin({super.key});

  @override
  State<BodyLogin> createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {
  // show the password or not
  bool _isObscure = true;
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
            const Text(
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
                obscureText: _isObscure,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: kButtonColor,
                  ),
                  border: InputBorder.none,
                  hintText: "Your Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    color: kButtonColor,
                  ),
                ),
              ),
            ),
            ButtonComponent(
              text: 'LOGIN',
              onPressed: () {
                Navigator.pushNamed(context, "homePage");
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an Account? ",
                  style: TextStyle(color: Colors.white, fontSize: 16.5),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "register");
                  },
                  child: const Text(
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
