import 'package:cold_ones_work/src/config/ktext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SuccesPage extends StatelessWidget {
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
              height: size.height * 0.03,
            ),
            Center(
              child: Image.asset(
                'assets/logo.png',
                width: 200,
              ),
            ),
            SizedBox(
              height: size.height * 0.20,
            ),
            KText(
              text: 'Success',
              color: Colors.white,
              fontSize: 30,
            )
          ],
        ),
      ),
    );
  }
}
