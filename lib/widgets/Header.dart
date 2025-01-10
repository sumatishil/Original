// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

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
      padding: EdgeInsets.all(10),
      height: 70,
      child: Row(
        children: [
          H2(text: "Home Page", fontSize: 20),
          Spacer(),
          DSI_PRIMARY_BUTTON(
            title: "Store",
            onPressed: () {},
            height: 50.0,
            width: 100.0,
            fontSize: 20.0,
            textColor: Colors.white,
            borderradius: BorderRadius.all(Radius.circular(10.0)),
            buttonColor: const Color.fromARGB(255, 255, 94, 0),
          ),
        ],
      ),
    );
  }
}
