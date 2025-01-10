// ignore_for_file: sort_child_properties_last

import 'package:dsi_pro/config.dart';
import 'package:dsi_pro/dsi_pro.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/img/map.png',
              fit: BoxFit.fill,
              height: DSIheightWidth(context, 100, true),
            ),
          ),
          Positioned(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: DSI_CONFIG.appDefaultPadding,
                    right: DSI_CONFIG.appDefaultPadding,
                  ),
                  height: 200,
                  width: DSIheightWidth(context, 100, false),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      H1(
                        text: "Boost",
                        fontSize: 20,
                      ),
                      H1(
                        text: "AGRICULTURE",
                        fontSize: 20,
                      ),
                      H1(
                        text: "PRODUCTION",
                        fontSize: 20,
                      ),
                      H1(
                        text: "THROUGH",
                        fontSize: 20,
                      ),
                      const SizedBox(height: 10),
                      DSI_PRIMARY_BUTTON(
                        title: "Try for free",
                        onPressed: () {},
                        textColor: Colors.white,
                        height: 55.0,
                        hoverButtonColor: const Color.fromARGB(255, 255, 94, 0),
                        borderradius: BorderRadius.all(Radius.circular(25.0)),
                        buttonColor: const Color.fromARGB(255, 255, 94, 0),
                      ),
                    ],
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            ),
          ),
        ],
      ),
    );
  }
}
