import 'package:dsi_pro/dsi_pro.dart';
import 'package:flutter/material.dart';
import 'package:original/widgets/Header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 131, 128, 128),
              offset: Offset(0, 0),
              blurRadius: 15,
            ),
          ],
          color: Colors.white,
        ),
        child: Column(children: [Header()]),
      ),
    );
  }
}
