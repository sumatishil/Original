// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dsi_pro/config.dart';
import 'package:dsi_pro/dsi_pro.dart';
import 'package:flutter/material.dart';
import 'package:original/pages/config.dart';
import 'package:original/pages/widgets/Header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: H2(text: "Welcome Back TARAS", fontSize: 18),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/img/user.png"),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(DSI_CONFIG.appDefaultPadding),
        // decoration: BoxDecoration(
        //   boxShadow: [
        //     BoxShadow(
        //       color: Color.fromARGB(255, 131, 128, 128),
        //       offset: Offset(0, 0),
        //       blurRadius: 15,
        //     ),
        //   ],
        //   color: Colors.white,
        // ),
        child: ListView(
          children: [
            Container(
              height: 150,
              padding: EdgeInsets.all(10),
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
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/img/pin.png", height: 20, width: 20),
                      H4(text: "location"),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      H4(
                        text: "Humidity",
                        fontSize: 13.0,
                      ),
                      Spacer(),
                      H4(
                        text: "Precipitation",
                        fontSize: 13.0,
                      ),
                      Spacer(),
                      H4(
                        text: "Pressure",
                        fontSize: 13.0,
                      ),
                      Spacer(),
                      H4(
                        text: "Wind",
                        fontSize: 13.0,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      H4(
                        text: "74%",
                        fontSize: 13.0,
                      ),
                      SizedBox(width: 46),
                      H4(
                        text: "5 mm",
                        fontSize: 13.0,
                      ),
                      SizedBox(width: 60),
                      H4(
                        text: "1019 hPa",
                        fontSize: 13.0,
                      ),
                      SizedBox(width: 10),
                      H4(
                        text: "18 km",
                        fontSize: 13.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 150,
              child: Row(
                children: [
                  Header(),
                  Header(),
                  Header(),
                  Header(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
