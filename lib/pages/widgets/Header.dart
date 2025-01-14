import 'package:dsi_pro/Sdk/Percent_indicator.dart';
import 'package:dsi_pro/config.dart';
import 'package:dsi_pro/dsi_pro.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: DSI_CONFIG.appDefaultMargin),
      height: 40,
      // color: Colors.amber,
      width: DSIheightWidth(context, 100, false),
      child: Row(children: [
        H1(
          text: "Welcome Back TARAS",
          // fontWeight: 10.0,
        ),
        Spacer(),
        CircleAvatar(
          backgroundImage: AssetImage("assets/img/user.png"),
        ),
      ]),
    );
  }
}
