import 'package:cold_ones_work/src/auth/signup_page.dart';
import 'package:cold_ones_work/src/config/ktext.dart';
import 'package:cold_ones_work/src/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              HexColor('#3F97BF').withOpacity(.6),
              HexColor('#6E6880'),
              HexColor('#B32525').withOpacity(.8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.09,
            ),
            Center(
              child: Image.asset(
                'assets/logo.png',
                width: 230,
              ),
            ),
            SizedBox(
              height: size.height * 0.09,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: ButtonWidget(
                text: 'Sign in with Apple',
                iconData: FontAwesomeIcons.apple,
                onPressed: () {},
                color: Colors.white,
                color1: Colors.black,
                color2: Colors.black,
                color3: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: ButtonWidget(
                text: 'Sign in with Email',
                iconData: Icons.mail,
                onPressed: () {},
                color: Colors.amber,
                color1: Colors.black,
                color2: Colors.black,
                color3: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: ButtonWidget(
                text: 'Sign in with Email',
                iconData: FontAwesomeIcons.google,
                onPressed: () {},
                color: Colors.white,
                color1: Colors.black,
                color2: Colors.red,
                color3: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: ButtonWidget(
                text: 'Sign in with Email',
                iconData: FontAwesomeIcons.facebookF,
                onPressed: () {},
                color: HexColor('#3B5998'),
                color1: Colors.black,
                color2: Colors.white,
                color3: Colors.white,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            KText(text: "don't have an account yet?"),
            GestureDetector(
                onTap: () {
                  Get.to(SignupPage());
                },
                child: KText(text: "Register here")),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.39),
              child: Divider(
                height: 2,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
