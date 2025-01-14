// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:dsi_pro/config.dart';
import 'package:dsi_pro/dsi_pro.dart';
import 'package:flutter/material.dart';
import 'package:original/pages/widgets/ContainerBox.dart';
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
      body: Stack(
        children: [
          ColoredBox(color: Colors.white),
          Container(
            padding: EdgeInsets.all(DSI_CONFIG.appDefaultPadding),
            child: ListView(
              children: [
                Header(),
                Container(
                  height: 180,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color.fromARGB(255, 209, 209, 209),
                    //     offset: Offset(5, 10),
                    //     blurRadius: 15,
                    //   ),
                    // ],
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/img/pin.png",
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(width: 10),
                          H4(text: "NS colony, Raiganj, Uttar Dinajpur"),
                        ],
                      ),
                      Row(
                        children: [
                          H1(text: "16°C", fontSize: 40.0),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              H2(text: "H: +19°C", fontSize: 10.0),
                              SizedBox(height: 5),
                              H2(text: "L: +15°C", fontSize: 10.0),
                            ],
                          ),
                          Spacer(),
                          Image.asset(
                            "assets/img/cloud2.png",
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 1,
                        width: DSIheightWidth(context, 100, false),
                        color: Color.fromARGB(255, 209, 209, 209),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Column(
                            children: [
                              H4(
                                text: "Humidity",
                                fontSize: 13.0,
                              ),
                              H4(
                                text: "74%",
                                fontSize: 13.0,
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              H4(
                                text: "Precipitation",
                                fontSize: 13.0,
                              ),
                              H4(
                                text: "5 mm",
                                fontSize: 13.0,
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              H4(
                                text: "Wind",
                                fontSize: 13.0,
                              ),
                              H4(
                                text: "18 km/h",
                                fontSize: 13.0,
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              H4(
                                text: "Pressure",
                                fontSize: 13.0,
                              ),
                              H4(
                                text: "1013 hPa",
                                fontSize: 13.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 160,
                  width: 320,
                  // color: Colors.amber,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Spacer(),
                      ContainerBox(
                        image: 'assets/img/field.png',
                        title: "Empty field",
                        subtitle: "Corn field",
                      ),
                      ContainerBox(
                        image: 'assets/img/field2.png',
                        title: "Empty field",
                        subtitle: "Corn field",
                      ),
                      ContainerBox(
                        image: 'assets/img/field.png',
                        title: "Empty field",
                        subtitle: "Corn field",
                      ),
                      ContainerBox(
                        image: 'assets/img/field.png',
                        title: "Empty field",
                        subtitle: "Corn field",
                      ),
                      ContainerBox(
                        image: 'assets/img/field2.png',
                        title: "Empty field",
                        subtitle: "Corn field",
                      ),
                      ContainerBox(
                        image: 'assets/img/field.png',
                        title: "Empty field",
                        subtitle: "Corn field",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 350,
                  padding: EdgeInsets.only(
                    right: DSI_CONFIG.appDefaultPadding,
                    left: DSI_CONFIG.appDefaultPadding,
                    top: 5,
                    // bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color.fromARGB(255, 209, 209, 209),
                    //     offset: Offset(5, 10),
                    //     blurRadius: 15,
                    //   ),
                    // ],
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      H1(text: "VRA MAP FOR FERTILIZING", fontSize: 40),
                      H4(
                        text:
                            "Ensuring efficient resource utilization and improved crop yields.",
                        fontSize: 18.0,
                      ),
                      Spacer(),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          color: Colors.amber,
                          image: DecorationImage(
                            image: AssetImage("assets/img/field.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        width: DSIheightWidth(context, 100, false),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
