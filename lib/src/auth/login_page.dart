import 'package:cold_ones_work/src/auth/forget_page.dart';
import 'package:cold_ones_work/src/auth/signup_page.dart';
import 'package:cold_ones_work/src/auth/succes_page.dart';
import 'package:cold_ones_work/src/config/ktext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return Scaffold(
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
              height: size.height * 0.12,
            ),
            Center(
              child: Image.asset(
                'assets/logo.png',
                width: 230,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 5),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                  // icon: Icon(
                  //   Icons.email,
                  //   color: Color(0xffF5591F),
                  // ),
                  hintText: "Email",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 5),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  // icon: Icon(
                  //   Icons.email,
                  //   color: Color(0xffF5591F),
                  // ),
                  hintText: "Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SizedBox(
              height: 50,
              width: size.width * 0.90,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  HexColor('#3F97BF').withOpacity(.6),
                )),
                onPressed: () {
                  Get.to(SuccesPage());
                },
                child: KText(
                  text: 'Submit',
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(ForgetPage());
                },
                child: KText(text: "Forget Password?")),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.35),
              child: Divider(
                height: 2,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(SignupPage());
                },
                child: KText(text: "Register an account")),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.34),
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
