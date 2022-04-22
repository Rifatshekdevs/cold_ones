import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class ForgetPage extends StatefulWidget {
  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
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
      child: Column(children: [
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
      ]),
    ));
  }
}
