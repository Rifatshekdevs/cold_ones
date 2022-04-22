import 'package:cold_ones_work/src/auth/login_page.dart';
import 'package:cold_ones_work/src/config/ktext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SignupPage extends StatelessWidget {
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
                decoration: InputDecoration(
                  // icon: Icon(
                  //   Icons.email,
                  //   color: Color(0xffF5591F),
                  // ),
                  hintText: "Username",
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
                decoration: InputDecoration(
                  // icon: Icon(
                  //   Icons.email,
                  //   color: Color(0xffF5591F),
                  // ),
                  hintText: "Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: size.width * 0.90,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  HexColor('#3F97BF').withOpacity(.6),
                )),
                onPressed: () {},
                child: KText(
                  text: 'Submit',
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            KText(text: "Already have an account yet?"),
            GestureDetector(
                onTap: () {
                  Get.to(LoginPage());
                },
                child: KText(text: "Login here")),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.41),
              child: Divider(
                height: 2,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
