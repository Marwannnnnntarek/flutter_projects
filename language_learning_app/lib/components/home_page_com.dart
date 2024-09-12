import 'package:flutter/material.dart';

class HomePageComponent extends StatelessWidget {
  HomePageComponent({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 50,
        width: double.infinity,
        color: color!,
        child: Text(
          text!,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
