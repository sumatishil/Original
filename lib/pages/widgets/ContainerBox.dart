// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:dsi_pro/dsi_pro.dart';
import 'package:flutter/material.dart';

class ContainerBox extends StatefulWidget {
  ContainerBox(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  var image;
  final title;
  final subtitle;

  @override
  State<ContainerBox> createState() => _ContainerBoxState();
}

class _ContainerBoxState extends State<ContainerBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.only(left: 7, right: 7, top: 5, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color.fromARGB(255, 131, 128, 128),
        //     offset: Offset(0, 0),
        //     blurRadius: 15,
        //   ),
        // ],
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: H3(text: widget.title, fontSize: 15),
          ),
          Positioned(
            bottom: 0,
            child: H3(text: widget.subtitle, fontSize: 10, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
