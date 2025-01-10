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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 131, 128, 128),
            offset: Offset(0, 0),
            blurRadius: 15,
          ),
        ],
        color: Colors.white,
      ),
      height: 70,
      width: 50,
      // child: ,
    );
  }
}
