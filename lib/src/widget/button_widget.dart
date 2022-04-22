import 'package:cold_ones_work/src/config/ktext.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Function()? onPressed;
  final Color color;
  final Color color1;
  final Color color2;
  final Color color3;
  ButtonWidget({
    required this.text,
    required this.iconData,
    required this.onPressed,
    required this.color,
    required this.color1,
    required this.color2,
    required this.color3,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20),
          primary: color,
          onPrimary: color1,
          minimumSize: Size(size.width * 0.60, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      onPressed: () {
        onPressed!();
      },
      icon: FaIcon(
        iconData,
        size: 30,
        color: color2,
      ),
      label: Padding(
        padding: EdgeInsets.only(right: 30),
        child: Center(
          child: KText(
            text: text,
            fontSize: 18,
            color: color3,
          ),
        ),
      ),
    );
  }
}
